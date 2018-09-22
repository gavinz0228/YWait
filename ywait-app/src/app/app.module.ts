import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FlexLayoutModule } from '@angular/flex-layout';
import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from './material.module';
import { FormsModule } from '../../node_modules/@angular/forms';
import { AuthModule } from './auth.module';

import { AppComponent } from './app.component';
import { MerchantComponent } from './merchant/merchant.component';
import { CouponListComponent } from './coupon-list/coupon-list.component';
import { AboutComponent } from './about/about.component';
import { UserProfileComponent } from './user-profile/user-profile.component';
import { FooterComponent } from './footer/footer.component';
import { SidenavListComponent } from './navigation/sidenav-list/sidenav-list.component';
import { HeaderComponent } from './navigation/header/header.component';
import { UserService} from './services/user.service';

@NgModule({
  declarations: [
    AppComponent,
    MerchantComponent,
    CouponListComponent,
    AboutComponent,
    UserProfileComponent,
    FooterComponent,
    SidenavListComponent,
    HeaderComponent,
    HeaderComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MaterialModule,
    FormsModule,
    FlexLayoutModule,
    AppRoutingModule,
    AuthModule
  ],
  providers: [UserService],
  bootstrap: [AppComponent]
})
export class AppModule { }
