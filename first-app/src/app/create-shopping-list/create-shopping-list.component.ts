import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms'; 
import { CommonModule } from '@angular/common'; 


@Component({
  selector: 'app-create-shopping-list',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './create-shopping-list.component.html',
  styleUrls: ['./create-shopping-list.component.scss']
})
export class CreateShoppingListComponent {
  newItem: string = '';
  shoppingList: string[] = [];

  addItem() {
    const trimmedItem = this.newItem.trim();
    if (trimmedItem) {
      this.shoppingList.push(trimmedItem);
      this.newItem = '';
    }
  }

  deleteItem(item: string) {
    this.shoppingList = this.shoppingList.filter(i => i !== item);
  }
}
