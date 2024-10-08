import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateLinkToGoogleComponent } from './create-link-to-google.component';

describe('CreateLinkToGoogleComponent', () => {
  let component: CreateLinkToGoogleComponent;
  let fixture: ComponentFixture<CreateLinkToGoogleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CreateLinkToGoogleComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CreateLinkToGoogleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
