/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import static javafx.scene.input.KeyCode.T;
import modelo.Ocorrencia;

/**
 *
 * @author Luísa Marques
 */
public class OcorrenciaDAO extends GenericDAO<Ocorrencia, Long>{
    public OcorrenciaDAO(){
        super(Ocorrencia.class);
    }
    
}
