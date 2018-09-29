/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Luísa Marques
 */
@Entity
@Table(name = "ocorrencia")
@NamedQueries({
    @NamedQuery(name = "Ocorrencia.findAll", query = "SELECT o FROM Ocorrencia o"),
    @NamedQuery(name = "Ocorrencia.findFilterByData", query = "SELECT o FROM Ocorrencia o WHERE o.odata = :odata"),
    @NamedQuery(name = "Ocorrencia.findFilterByBairro", query = "SELECT o FROM Ocorrencia o WHERE o.obairro = :obairro"),
    @NamedQuery(name = "Ocorrencia.findFilterByBO", query = "SELECT o FROM Ocorrencia o WHERE o.obo = :obo"),
    @NamedQuery(name = "Ocorrencia.findFilterByNatureza", query = "SELECT o FROM Ocorrencia o WHERE o.onatureza = :onatureza")
})
public class Ocorrencia implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "obo")
    private Long obo;
    @Basic(optional = false)
    @Column(name = "onatureza")
    private String onatureza;
    @Basic(optional = false)
    @Column(name = "oviolencia")
    private boolean oviolencia;
    @Basic(optional = false)
    @Column(name = "oturno")
    private String oturno;
    @Basic(optional = false)
    @Column(name = "obairro")
    private String obairro;
    @Column(name = "oarma")
    private Boolean oarma;
    @Basic(optional = false)
    @Column(name = "odata")
    @Temporal(TemporalType.DATE)
    private Date odata;

    public Ocorrencia() {
    }

    public Ocorrencia(Long obo) {
        this.obo = obo;
    }

    public Ocorrencia(Long obo, String onatureza, boolean oviolencia, String oturno, String obairro, Date odata) {
        this.obo = obo;
        this.onatureza = onatureza;
        this.oviolencia = oviolencia;
        this.oturno = oturno;
        this.obairro = obairro;
        this.odata = odata;
    }

    public Long getObo() {
        return obo;
    }

    public void setObo(Long obo) {
        this.obo = obo;
    }

    public String getOnatureza() {
        return onatureza;
    }

    public void setOnatureza(String onatureza) {
        this.onatureza = onatureza;
    }

    public boolean getOviolencia() {
        return oviolencia;
    }

    public void setOviolencia(boolean oviolencia) {
        this.oviolencia = oviolencia;
    }

    public String getOturno() {
        return oturno;
    }

    public void setOturno(String oturno) {
        this.oturno = oturno;
    }

    public String getObairro() {
        return obairro;
    }

    public void setObairro(String obairro) {
        this.obairro = obairro;
    }

    public Boolean getOarma() {
        return oarma;
    }

    public void setOarma(Boolean oarma) {
        this.oarma = oarma;
    }

    public Date getOdata() {
        return odata;
    }

    public void setOdata(Date odata) {
        this.odata = odata;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (obo != null ? obo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ocorrencia)) {
            return false;
        }
        Ocorrencia other = (Ocorrencia) object;
        if ((this.obo == null && other.obo != null) || (this.obo != null && !this.obo.equals(other.obo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Ocorrencia[ obo=" + obo + " ]";
    }
    
}
