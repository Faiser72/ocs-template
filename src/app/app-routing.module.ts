import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { SidebarComponent } from "./sidebar/sidebar/sidebar.component";
import { DefaultComponent } from './default/default/default.component';
import { AddStaffComponent } from './Modules/Staff/add-staff/add-staff.component';


const routes: Routes = [

//{ path:"changeForgot",component:ChangepasswordComponent},
  {path: "",component: DefaultComponent,
  children: [{ path: "sidebar", component: SidebarComponent },
             { path: 'addStaff', component: AddStaffComponent},
              ]},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
