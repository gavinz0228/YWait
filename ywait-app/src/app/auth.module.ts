import { NgModule } from '../../node_modules/@angular/core';
import { SignupComponent } from './auth/signup/signup.component';
import { LoginComponent } from './auth/login/login.component';
import { ReactiveFormsModule } from '../../node_modules/@angular/forms';
import { AuthRoutingModule } from './auth-routing.module';
import { SharedModule } from './shared/shared.module';

@NgModule({
  declarations: [
    SignupComponent,
    LoginComponent
  ],
  imports: [
    ReactiveFormsModule,
    AuthRoutingModule,
    SharedModule
  ],
  exports: []
})
export class AuthModule {

}
