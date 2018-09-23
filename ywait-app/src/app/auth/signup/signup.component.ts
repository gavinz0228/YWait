import { Component, OnInit } from '@angular/core';
import { NgForm } from '../../../../node_modules/@angular/forms';
import { User } from '../../entities/user';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  maxDate;
  private user: User;

  constructor() { }

  ngOnInit() {
    this.user = new User(' ', ' ', ' ', ' ');
    this.maxDate = new Date();
    this.maxDate.setFullYear(this.maxDate.getFullYear() - 18);
  }

  onSubmit(form: NgForm) {

    this.user.firstName = form.value.firstName;
    this.user.lastName = form.value.lastName;
    this.user.password = form.value.password;
    this.user.userName = form.value.userName;
    console.log(form);

  }

}
