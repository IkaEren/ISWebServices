package service;

import Entity.Storeentity;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Stateless
@Path("entity.storeentity")
public class StoreentityFacadeREST extends AbstractFacade<Storeentity> {

    @PersistenceContext(unitName = "WebService")
    private EntityManager em;

    public StoreentityFacadeREST() {
        super(Storeentity.class);
    }

    @POST
    @Override
    @Consumes({"application/xml", "application/json"})
    public void create(Storeentity entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({"application/xml", "application/json"})
    public void edit(@PathParam("id") Long id, Storeentity entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Long id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces({"application/xml", "application/json"})
    public Storeentity find(@PathParam("id") Long id) {
        return super.find(id);
    }

    @GET
    @Path("stores")
    @Produces({"application/json"})
    public List<Storeentity> listAllStores() {
        Query q = em.createQuery("Select s from Storeentity s where s.isdeleted=FALSE and s.countryId.name='Singapore'");
        List<Storeentity> list = q.getResultList();
        for (Storeentity s : list) {
            em.detach(s);
            s.setCountryId(null);
            s.setRegionalofficeId(null);
            s.setWarehouseId(null);
        }
        List<Storeentity> list2 = new ArrayList();
        list2.add(list.get(0));
        return list;
    }

       //get the item quantity based on the storeID
    //this function is used by ECommerce_StockAvailability servlet
    @GET
    @Path("getQuantity")
    @Produces({"application/json"})
    public Response getItemQuantityOfStore(@QueryParam("storeID") Long storeID, @QueryParam("SKU") String SKU) {
        try {
            Storeentity store = new Storeentity(storeID);
            store.setId(storeID);
            
            int qty = store.getItemQuantity(SKU);
            if (qty >= 0) {
                return Response.ok(qty + "", MediaType.APPLICATION_JSON).build();
            } else {
                return Response.status(Response.Status.NOT_FOUND).build();
            }        
        } catch (Exception ex) {
            ex.printStackTrace();
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }
    
    @GET
    @Path("getAddress")
    @Produces({"application/json"})
    public Response getStoreAddressInfo(@QueryParam("storeID") long storeID) {
        try {
            Storeentity store = new Storeentity(storeID);
            store.retrieveStoreData();
            String result = store.getAddress() + ". Telephone: " +
                    store.getTelephone();
            
            // Call the method within Store that retrieves information from the
            // database
            if (store.getAddress() != null && store.getPostalcode() != null) {
                return Response.ok(result, MediaType.APPLICATION_JSON).build();
            } else {
            return Response.status(Response.Status.BAD_REQUEST)
                    .entity("Address information for the store is missing.").build();
            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
            return Response.status(Response.Status.BAD_REQUEST)
                    .entity(ex.toString()).build();
        }
    }
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

}
