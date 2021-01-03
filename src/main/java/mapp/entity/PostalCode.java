/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapp.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Hello Java !
 */
@Entity
@Table(name = "postal_code", catalog = "mapp", schema = "")
@NamedQueries({
    @NamedQuery(name = "PostalCode.findAll", query = "SELECT p FROM PostalCode p")
    , @NamedQuery(name = "PostalCode.findById", query = "SELECT p FROM PostalCode p WHERE p.id = :id")
    , @NamedQuery(name = "PostalCode.findByPostalCode", query = "SELECT p FROM PostalCode p WHERE p.postalCode = :postalCode")
    , @NamedQuery(name = "PostalCode.findByMunicipality", query = "SELECT p FROM PostalCode p WHERE p.municipality = :municipality")})
public class PostalCode implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "postal_code")
    private String postalCode;
    @Size(max = 45)
    @Column(name = "municipality")
    private String municipality;
    @ManyToMany(mappedBy = "postalCodeList")
    private List<Company> companyList;

    public PostalCode() {
    }

    public PostalCode(Integer id) {
        this.id = id;
    }

    public PostalCode(Integer id, String postalCode) {
        this.id = id;
        this.postalCode = postalCode;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getMunicipality() {
        return municipality;
    }

    public void setMunicipality(String municipality) {
        this.municipality = municipality;
    }

    public List<Company> getCompanyList() {
        return companyList;
    }

    public void setCompanyList(List<Company> companyList) {
        this.companyList = companyList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PostalCode)) {
            return false;
        }
        PostalCode other = (PostalCode) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "mapp.entity.PostalCode[ id=" + id + " ]";
    }
    
}