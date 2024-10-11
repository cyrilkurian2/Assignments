import { Component, Input } from '@angular/core'; 
import { CommonModule } from '@angular/common'; 
import { AddViewServiceService } from '../add-view-service.service';

@Component({
  selector: 'app-view-item',
  standalone: true,
  imports: [CommonModule],
  templateUrl:'./view-item.component.html'
})
export class ViewItemComponent {
  items:string[] = [];
  count!:number;

  constructor(private addservice : AddViewServiceService) {}
    
    ngOnInit()
    {
      this.addservice.addviewservice$.subscribe(itemValue => this.AddToItems(itemValue))
    }

    AddToItems(itemValue:string){
      this.items.push(itemValue); 
      this.count=this.items.length;
      this.addCountvalue(this.count);
    }

    addCountvalue(count:number)
    {
      this.addservice.addCountval(count);
    }

    deleteItem(item:string){
      this.items = this.items.filter(i => i !== item);
      this.count = this.items.length; // Update the count
      this.addCountvalue(this.count);
    }

}



function AddToItems(itemValue: any, string: any) {
  throw new Error('Function not implemented.');
}

