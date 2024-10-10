
import { Component} from '@angular/core';
import { FormsModule } from '@angular/forms'; 
import { CommonModule } from '@angular/common'; 
import { AddViewServiceService } from '../add-view-service.service';

@Component({
  selector: 'app-add-item',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl:'./add-item.component.html'
  
})
export class AddItemComponent {
  itemValue: string='';
  countInt!:number;

  constructor(private addservice : AddViewServiceService) {}

  ngOnInit(){
    this.addservice.addcountservice$.subscribe(count => this.addCount(count));
  }

 addNewItem(){
    this.addservice.giveData(this.itemValue)
 }

 addCount(count : number)
 {
    this.countInt=count;
 }

}
