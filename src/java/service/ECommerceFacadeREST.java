package service;

import Entity.Itementity;
import Entity.Lineitementity;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import Entity.ShoppingCartLineItem;
import static java.lang.System.out;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.ws.rs.core.GenericEntity;

@Path("commerce")
public class ECommerceFacadeREST {

    @Context
    private UriInfo context;
    private static final SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public ECommerceFacadeREST() {
    }

    @GET
    @Produces("application/json")
    public String getJson() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of ECommerce
     *
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/json")
    public void putJson(String content) {
    }
    
    @PUT
    @Path("createECommerceTransactionRecord")
    @Produces("application/json")
    public Response createTransactionRecord(
            String memberId,
            @QueryParam("amountPaid") double finalPrice, 
            @QueryParam("countryID") long countryId) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/islandfurniture-it07?zeroDateTimeBehavior=convertToNull&user=root&password=12345");
            
            String stmt = "INSERT INTO salesrecordentity (AMOUNTDUE, "
                    + "AMOUNTPAID, AMOUNTPAIDUSINGPOINTS, CREATEDDATE, "
                    + "CURRENCY, LOYALTYPOINTSDEDUCTED, POSNAME, "
                    + "RECEIPTNO, SERVEDBYSTAFF, MEMBER_ID, STORE_ID)"
                    + " VALUES "
                    + "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            //http://stackoverflow.com/questions/7162989/sqlexception-generated-keys-not-requested-mysql
            PreparedStatement ps = conn.prepareStatement(stmt, Statement.RETURN_GENERATED_KEYS);
            ps.setDouble(1, finalPrice);
            ps.setDouble(2, finalPrice);
            ps.setDouble(3, 0); // AMOUNTPAIDUSINGPOINTS -- Default 0.
            ps.setTimestamp(4, new java.sql.Timestamp(System.currentTimeMillis()));
            ps.setString(5, "SGD"); // CURRENCY -- Let's assume Default as SGD
            ps.setInt(6, 0); // LOYALTYPOINTSDEDUCTED -- Let's assume Default as 0
            ps.setString(7, null); // POSNAME -- There's no counter in ECommerce.. Set to null
            ps.setString(8, null); // RECEIPTNO -- No physical receipt...
            ps.setString(9, null); // SERVEDBYSTAFF -- No STAFF SERVING ECOMMERCE..
            ps.setLong(10, Long.parseLong(memberId));
            ps.setLong(11, 59); // STORE_ID -- ECommerce -> 10001
            
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            
            long recordId = rs.getLong(1);
            rs.close();
            ps.close();
            return Response.ok(String.valueOf(recordId)).build();

        } catch (Exception ex) {
            return Response.status(Response.Status.BAD_REQUEST).build();
        }
    }
    
@PUT
    @Path("createECommerceLineItemRecord")
    @Produces("application/json")
    public Response createECommerceLineItemRecord(
            @QueryParam("salesRecordID") long salesRecordId,
            @QueryParam("itemEntityID") long itemEntityId,
            @QueryParam("quantity") int quantity,
            @QueryParam("countryID") long countryId) {
        try {
            // Initialize the Lineitementity object first
            Itementity item = new Itementity(itemEntityId);
            Lineitementity lineitem = new Lineitementity();
            
            if (item.deductAtDatabase(quantity)) {
                // Move on since we've deducted the stocks
            } else {
                return Response.status(Response.Status.BAD_REQUEST)
                        .entity("Unable to deduct from database").build();
            }
            
            // Then retrieve the primary key from the database after adding it
            lineitem.setId(item.addToDatabase(quantity));
            
            // Bind it with the salesrecordentity
            lineitem.addToSalesRecord(salesRecordId);
            
             if (lineitem.getId() > 0) { // I'm just scared, so we'll check it again
                 return Response.status(Response.Status.OK)
                         .entity("Success! ").build();
             } else {
                 return Response.status(Response.Status.CONFLICT)
                         .entity(String.valueOf(lineitem.getId())).build();
             }
        } catch (ClassNotFoundException | SQLException ex) {
             return Response.status(Response.Status.BAD_REQUEST)
                    .entity(ex.toString()).build();
        }
    }
}
