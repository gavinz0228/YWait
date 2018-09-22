import { Observable } from 'rxjs'
import { notImplemented } from '../../../../node_modules/@angular/core/src/render3/util';
import { HttpClient } from '../../../../node_modules/@types/selenium-webdriver/http';
export abstract class BaseDataService
{
    public abstract getById(id: number): Observable<any>;

    public abstract add(object: any): Observable<boolean>;

    public abstract deleteById(id: number): Observable<boolean>;
}