// import { Component } from '@angular/core';

// @Component({
//   selector: 'app-view-item',
//   standalone: true,
//   imports: [],
//   templateUrl: './view-item.component.html',
//   styleUrl: './view-item.component.scss'
// })
// export class ViewItemComponent {

// }

import { Component, Input } from '@angular/core'; 
import { CommonModule } from '@angular/common'; 

@Component({
  selector: 'app-view-item',
  standalone: true,
  imports: [CommonModule],
  templateUrl:'./view-item.component.html'
})
export class ViewItemComponent {
  @Input() shoppingList: string[] = [];
  @Input() itemCount: number = 0;

  deleteItem(item: string) {
    this.shoppingList = this.shoppingList.filter(i => i !== item);
    this.itemCount = this.shoppingList.length; // Update the count
  }
}
