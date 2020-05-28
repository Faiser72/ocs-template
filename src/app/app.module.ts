import { BrowserModule } from "@angular/platform-browser";
import { NgModule } from "@angular/core";
import { AppRoutingModule } from "./app-routing.module";
import { AppComponent } from "./app.component";
import { SidebarModule } from "./sidebar/sidebar.module";
import { HeaderModule } from "./header/header.module";
import { RouterModule } from "@angular/router";
import { SidebarComponent } from "./sidebar/sidebar/sidebar.component";
import { HeaderComponent } from "./header/header/header.component";
import { FooterComponent } from "./footer/footer/footer.component";
import { DataTablesModule } from "angular-datatables";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import {
  MatPaginatorModule,
  MatDatepickerModule,
  MatNativeDateModule,
  MatFormFieldModule,
  MatInputModule,
} from "@angular/material";

import { DefaultModule } from "./default/default.module";
import { DefaultComponent } from "./default/default/default.component";

import { HttpClientModule, HTTP_INTERCEPTORS } from "@angular/common/http";
import { AddStaffComponent } from './Modules/Staff/add-staff/add-staff.component';



@NgModule({
  declarations: [
    AppComponent,
    SidebarComponent,
    HeaderComponent,
    FooterComponent,
    DefaultComponent,
    AddStaffComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    SidebarModule,
    HeaderModule,
    RouterModule,
    DataTablesModule,
    BrowserAnimationsModule,
    DefaultModule,
    FormsModule,
    MatPaginatorModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatFormFieldModule,
    MatInputModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
  ],

  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
