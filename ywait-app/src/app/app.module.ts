import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';
import { MerchantComponent } from './merchant/merchant.component';
import { CouponListComponent } from './coupon-list/coupon-list.component';
import { AboutComponent } from './about/about.component';
import { UserProfileComponent } from './user-profile/user-profile.component';
import { FooterComponent } from './footer/footer.component';
import { SidenavListComponent } from './navigation/sidenav-list/sidenav-list.component';
import { HeaderComponent } from './navigation/header/header.component';
import { SignupComponent } from './auth/signup/signup.component';
import { LoginComponent } from './auth/login/login.component';
import { UserService} from './services/user.service'

@NgModule({
  declarations: [
    AppComponent,
    MerchantComponent,
    LoginComponent,
    CouponListComponent,
    AboutComponent,
    UserProfileComponent,
    FooterComponent,
    SidenavListComponent,
    HeaderComponent,
    SignupComponent,
    UserService,
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
