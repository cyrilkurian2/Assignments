import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateListWithColorComponent } from './create-list-with-color.component';

describe('CreateListWithColorComponent', () => {
  let component: CreateListWithColorComponent;
  let fixture: ComponentFixture<CreateListWithColorComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CreateListWithColorComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreateListWithColorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
