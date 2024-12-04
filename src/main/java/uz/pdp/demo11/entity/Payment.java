package uz.pdp.demo11.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import uz.pdp.demo11.baseEntity.BaseEntity;
@Entity
@Data@AllArgsConstructor@NoArgsConstructor
public class Payment extends BaseEntity {
    private Integer amount;
    @ManyToOne
    private Student student;
}
