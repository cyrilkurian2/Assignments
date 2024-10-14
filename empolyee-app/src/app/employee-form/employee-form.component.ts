import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';

interface Address {
  address_line_1: string | null;
  address_line_2: string | null;
  city: string | null;
}

interface Employee {
  firstName: string | null;
  lastName: string | null;
  email: string | null;
  phone: string | null;
  address: Address | null;
}

@Component({
  selector: 'app-employee-form',
  standalone: true,
  imports: [ReactiveFormsModule, CommonModule],
  templateUrl: './employee-form.component.html',
  styleUrls: ['./employee-form.component.scss']
})
export class EmployeeFormComponent {
  profileForm = new FormGroup({
    firstName: new FormControl<string | null>(null, Validators.required),
    lastName: new FormControl<string | null>(null),
    email: new FormControl<string | null>(null, [
      Validators.required,
      Validators.pattern("^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$")
    ]),
    phone: new FormControl<string | null>(null, [
      Validators.required,
      Validators.maxLength(10),
      Validators.pattern("^[0-9]*$")
    ]),
    address: new FormGroup({
      address_line_1: new FormControl<string | null>(null),
      address_line_2: new FormControl<string | null>(null),
      city: new FormControl<string | null>(null),
    }),
  });

  employeeDetails: Employee | null = null;

  onSubmit() {
    if (this.profileForm.valid) {
      this.employeeDetails = this.profileForm.getRawValue(); 
      console.warn(this.employeeDetails);
    }
  }
}
