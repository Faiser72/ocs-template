import { Component, OnInit, ViewChild, ElementRef, OnDestroy } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  constructor(public router: Router) { }
  currentUserName: string = "Vikash Kumar";
  userType:string = "Admin";
  status:string = "Online";
  imgUrl:string = "assets/images/cp.jpg";
  ngOnInit() {
  }
 
redirectToAbout() {
    this.router.navigateByUrl('dashboard/about');
}
logMeOut(){
    this.router.navigateByUrl('login');
}
}
