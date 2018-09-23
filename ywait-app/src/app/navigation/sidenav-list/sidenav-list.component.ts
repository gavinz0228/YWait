import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { MatIconRegistry } from '../../../../node_modules/@angular/material';
import { DomSanitizer } from '../../../../node_modules/@angular/platform-browser';

@Component({
  selector: 'app-sidenav-list',
  templateUrl: './sidenav-list.component.html',
  styleUrls: ['./sidenav-list.component.css']
})
export class SidenavListComponent implements OnInit {

  isAuth = true;
  @Output() closeSideNav = new EventEmitter;

  constructor(
    private matIconRegistry: MatIconRegistry,
    private domSanitizer: DomSanitizer
  ) {
    this.matIconRegistry.addSvgIcon(
      'award',
      this.domSanitizer.bypassSecurityTrustResourceUrl('../assets/award.svg')
    );
   }

  ngOnInit() {
  }

  onSidenavClose() {
    this.closeSideNav.emit();
  }

  onLogout() {
    this.onSidenavClose();
  }

}
