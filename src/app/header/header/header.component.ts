import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  showModal: boolean;
  registerForm: FormGroup;
  submitted = false;
  constructor() { }

  ngOnInit( ) { 
    
      }
      username:string = "Vikash Kumar";
      designationName:string = "ADMIN";
      createdDate:string = '2020-04-26';
}
