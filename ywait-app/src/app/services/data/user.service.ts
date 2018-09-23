import { Injectable } from '@angular/core';
import { Observable } from 'rxjs'
import { HttpClientModule, HttpClient } from "@angular/common/http";
import { User } from '../../entities/user';
import { BaseDataService } from './base-data-service'
@Injectable()
export class UserService extends BaseDataService{

  constructor(private http: HttpClient) {
    super();
  }

  public getById(userId: number): Observable<any>  {
     const user = Observable.of(0);
   return user;
  }

  public add(user: User): Observable<boolean> {
    return new Observable<boolean>();
  }
  public login(userName: string, password: string): Observable<User>{
    return new Observable<User>();
  }

  public changePassword(userName: string, newPassword: string): Observable<boolean>{
    return new Observable<boolean>();
  }
  public deleteById(id: number): Observable<boolean>{
    return new Observable<boolean>();
  }

}
