import { Injectable } from '@angular/core';
import { Observable } from 'rxjs'
import { HttpClientModule, HttpClient } from "@angular/common/http";
import { User } from '../Entities/user';
@Injectable()
export class UserService {

  constructor(private http: HttpClient) { 
    
  }

  getById(userId: number): Observable<User[]>  {
    
    return new Observable<User[]>();
  }

}
