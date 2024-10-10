import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AddViewServiceService {

  private addviewservice = new Subject<string>();
  addviewservice$=this.addviewservice.asObservable();

  private addcountservice=new Subject<number>();
  addcountservice$=this.addcountservice.asObservable();

  giveData(strItem :string){
    this.addviewservice.next(strItem);
  }

  addCountval(count:number)
  {
    this.addcountservice.next(count);
  }
}
