/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utn.frc.dlc.goses;

import java.io.Serializable;

/**
 *
 * @author pixelhar
 */
public class Posteo implements Serializable{
    private Vocabulario voc;
    private Documento doc;
    private int tf;
    
    public Posteo() {
        super();
    }
    
    public Posteo(Vocabulario voc, Documento doc, int tf) {
        super();
        this.voc = voc;
        this.doc = doc;
        this.tf = tf;
    }

    public Vocabulario getVoc() {
        return voc;
    }

    public void setVoc(Vocabulario voc) {
        this.voc = voc;
    }

    public Documento getDoc() {
        return doc;
    }

    public void setDoc(Documento doc) {
        this.doc = doc;
    }

    public int getTf() {
        return tf;
    }

    public void setTf(int tf) {
        this.tf = tf;
    }

    @Override
    public String toString() {
        return "Posteo{" + "voc=" + voc + ", doc=" + doc + ", tf=" + tf + '}';
    }
    
    
    
    
     
    
    
}
