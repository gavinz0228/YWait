import { Component, OnInit } from '@angular/core';
import { MatIconRegistry } from '../../../node_modules/@angular/material';
import { DomSanitizer } from '../../../node_modules/@angular/platform-browser';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {

  constructor(
    private matIconRegistry: MatIconRegistry,
    private domSanitizer: DomSanitizer
  ) {
    this.matIconRegistry.addSvgIcon(
      'coupon',
      this.domSanitizer.bypassSecurityTrustResourceUrl('../assets/coupon.svg')
    );
   }

  ngOnInit() {
  }

}
