
import java.util.ArrayList;

import java.util.Arrays;

import java.util.List;

import java.util.function.Predicate;

import java.util.stream.Collectors;

public class StudentPredicate extends Studentt {

	public static Predicate<Studentt> isMarksFirstClass() {

		return studentt -> studentt.getMarks() >= 60 && studentt.getMarks() <= 79;

	}

	public static Predicate<Studentt> isMarksFail() {

		return studentt -> studentt.getMarks() < 50;

	}

	public static List<Studentt> filterStudent(List<Studentt> students, Predicate<Studentt> predicate) {

		return students.stream().filter(predicate).collect(Collectors.toList());

	}

	public static void main(String[] args) {

		List<Studentt> students = Arrays.asList(new Studentt("Pankaj", 80), new Studentt("Ram", 50),

				new Studentt("Dheeraj", 90), new Studentt("Aysuhi", 60), new Studentt("Purva", 30),
				new Studentt("Preksha", 40));

		System.out.println("Distinction : ");

		StudentPredicate.filterStudent(students, StudentPredicate.isMarksFirstClass()).forEach(System.out::println);

		System.out.println("First Class: ");

		StudentPredicate.filterStudent(students, StudentPredicate.isMarksFirstClass()).forEach(System.out::println);

		System.out.println("Fail: ");

		StudentPredicate.filterStudent(students, StudentPredicate.isMarksFail()).forEach(System.out::println);

	}
}
