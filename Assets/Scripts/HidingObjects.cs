﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HidingObjects : MonoBehaviour {

	public Transform mark;
	public string typeObject = null;

    public KeyCode clic;
   
	public Toggle isBaignoire;
	public Toggle isCanape;
	public Toggle isChaise;
	public Toggle isEvier;
	public Toggle isTableRec;
	public Toggle isTableRon;
	public Toggle isToilette;

	public static int nbObjects = 3;
	public int counter = 0;
	public Text nbObjectsText;
    
	public PlacedObjects po;
	public int id;

    // Use this for initialization
    void Start () {
		nbObjectsText.text = "0/" + nbObjects;

		GameObject go = GameObject.Find("PlacedObjects");
		if(go == null){
			Debug.LogError("Failed to find an object named 'PlacedObjects'");
			this.enabled = false;
			return;
		}

		po = go.GetComponent<PlacedObjects>();
		po.NewList ();
		id = po.GetNbList ();
	}

	// Update is called once per frame
	void Update () {

		Vector2 mousePosition = new Vector2 (Input.mousePosition.x, Input.mousePosition.y);
		Vector2 obj = Camera.main.ScreenToWorldPoint (mousePosition);
		Vector2 screenPosition = Camera.main.ScreenToViewportPoint (mousePosition);
		SetTypeObject ();
		if (Input.GetKeyDown(clic) && screenPosition [0] < 0.8 && typeObject != null  && counter < nbObjects) { 	//Check if the clic is on the GamePanel. Check if one specific object is active.
			po.AddPosition (id, mousePosition);
			po.AddObject(id, typeObject);
			counter++;
			Instantiate (mark, new Vector3(obj[0], obj[1], -1), mark.rotation);
			nbObjectsText.text = counter + "/" + nbObjects;
		}
	}


	private void SetTypeObject(){
		if (isBaignoire.isOn) {
			typeObject = "baignoire";
		} else if (isCanape.isOn) {
			typeObject = "canape";
		} else if (isChaise.isOn) {
			typeObject = "chaise";
		} else if (isEvier.isOn) {
			typeObject = "evier";
		} else if (isTableRec.isOn) {
			typeObject = "tablerec";
		} else if (isTableRon.isOn) {
			typeObject = "tableron";
		} else if (isToilette.isOn) {
			typeObject = "toilette";
		} else {
			typeObject = null;
		}
	}
}
