import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateNestedListComponent } from './create-nested-list.component';

describe('CreateNestedListComponent', () => {
  let component: CreateNestedListComponent;
  let fixture: ComponentFixture<CreateNestedListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CreateNestedListComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreateNestedListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
