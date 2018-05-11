/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function showAddPane(){
    document.getElementById("addPane").style.display = "block";
    document.getElementById("editPane").style.display = "none";
    document.getElementById("showPane").style.display = "none";
}

function showEditPane(){
    document.getElementById("addPane").style.display = "none";
    document.getElementById("editPane").style.display = "block";
    document.getElementById("showPane").style.display = "none";
}

function showShowPane(){
    document.getElementById("addPane").style.display = "none";
    document.getElementById("editPane").style.display = "none";
    document.getElementById("showPane").style.display = "block";
}