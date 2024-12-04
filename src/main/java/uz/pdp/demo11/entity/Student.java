package uz.pdp.demo11.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import uz.pdp.demo11.baseEntity.BaseEntity;

@Entity
@AllArgsConstructor@NoArgsConstructor@Data
public class Student extends BaseEntity {

    private String firstName;
    private String lastName;
    private int age;
    @ManyToOne
    private Groups groups;
}
