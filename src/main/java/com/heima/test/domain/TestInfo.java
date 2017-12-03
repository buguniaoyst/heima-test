package com.heima.test.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="testinfo"
    ,catalog="heima"
)
public class TestInfo {
	private Integer id;
	 @Id @GeneratedValue
	    @Column(name="id", unique=true, nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private String q1;
	private String q2;
	private String q3;
	private String q4;
	private String q5;
	private String q6;
	private String q7;
	private String q8;
	private String q9;
	private String q10;
	private String q11;
	private String q12;
	private String q13;
	private String q14;
	private String q15;
	private String q16;
	private String q17;
	private String q18;
	private String q19;
	private String q20;
	private String q21;
	private String q22;
	private String q23;
	private String q24;
	private String q25;
	private String q26;
	private String q27;
	private String q28;
	private String q29;
	private String q30;
	private String q31;
	private String q32;
	private String q33;
	private String q34;
	private String q35;
	private String q36;
	private String q37;
	private String q38;
	private String q39;
	private String q40;
	private String testid;

	public String getTestid() {
		return testid;
	}

	public void setTestid(String testid) {
		this.testid = testid;
	}

	private Double totalScore;
	public String getQ1() {
		return q1;
	}
	public String getQ2() {
		return q2;
	}
	public String getQ3() {
		return q3;
	}
	public String getQ4() {
		return q4;
	}
	public String getQ5() {
		return q5;
	}
	public String getQ6() {
		return q6;
	}
	public String getQ7() {
		return q7;
	}
	public String getQ8() {
		return q8;
	}
	public String getQ9() {
		return q9;
	}
	public String getQ10() {
		return q10;
	}
	public String getQ11() {
		return q11;
	}
	public String getQ12() {
		return q12;
	}
	public String getQ13() {
		return q13;
	}
	public String getQ14() {
		return q14;
	}
	public String getQ15() {
		return q15;
	}
	public String getQ16() {
		return q16;
	}
	public String getQ17() {
		return q17;
	}
	public String getQ18() {
		return q18;
	}
	public String getQ19() {
		return q19;
	}
	public String getQ20() {
		return q20;
	}
	public String getQ21() {
		return q21;
	}
	public String getQ22() {
		return q22;
	}
	public String getQ23() {
		return q23;
	}
	public String getQ24() {
		return q24;
	}
	public Double getTotalScore() {
		return totalScore;
	}
	public void setQ1(String q1) {
		this.q1 = q1;
	}
	public void setQ2(String q2) {
		this.q2 = q2;
	}
	public void setQ3(String q3) {
		this.q3 = q3;
	}
	public void setQ4(String q4) {
		this.q4 = q4;
	}
	public void setQ5(String q5) {
		this.q5 = q5;
	}
	public void setQ6(String q6) {
		this.q6 = q6;
	}
	public void setQ7(String q7) {
		this.q7 = q7;
	}
	public void setQ8(String q8) {
		this.q8 = q8;
	}
	public void setQ9(String q9) {
		this.q9 = q9;
	}
	public void setQ10(String q10) {
		this.q10 = q10;
	}
	public void setQ11(String q11) {
		this.q11 = q11;
	}
	public void setQ12(String q12) {
		this.q12 = q12;
	}
	public void setQ13(String q13) {
		this.q13 = q13;
	}
	public void setQ14(String q14) {
		this.q14 = q14;
	}
	public void setQ15(String q15) {
		this.q15 = q15;
	}
	public void setQ16(String q16) {
		this.q16 = q16;
	}
	public void setQ17(String q17) {
		this.q17 = q17;
	}
	public void setQ18(String q18) {
		this.q18 = q18;
	}
	public void setQ19(String q19) {
		this.q19 = q19;
	}
	public void setQ20(String q20) {
		this.q20 = q20;
	}
	public void setQ21(String q21) {
		this.q21 = q21;
	}
	public void setQ22(String q22) {
		this.q22 = q22;
	}
	public void setQ23(String q23) {
		this.q23 = q23;
	}
	public void setQ24(String q24) {
		this.q24 = q24;
	}
	public void setTotalScore(Double totalScore) {
		this.totalScore = totalScore;
	}
	public String getQ25() {
		return q25;
	}

	public void setQ25(String q25) {
		this.q25 = q25;
	}

	public String getQ26() {
		return q26;
	}

	public void setQ26(String q26) {
		this.q26 = q26;
	}

	public String getQ27() {
		return q27;
	}

	public void setQ27(String q27) {
		this.q27 = q27;
	}

	public String getQ28() {
		return q28;
	}

	public void setQ28(String q28) {
		this.q28 = q28;
	}

	public String getQ29() {
		return q29;
	}

	public void setQ29(String q29) {
		this.q29 = q29;
	}

	public String getQ30() {
		return q30;
	}

	public void setQ30(String q30) {
		this.q30 = q30;
	}

	public String getQ31() {
		return q31;
	}

	public void setQ31(String q31) {
		this.q31 = q31;
	}

	public String getQ32() {
		return q32;
	}

	public void setQ32(String q32) {
		this.q32 = q32;
	}

	public String getQ33() {
		return q33;
	}

	public void setQ33(String q33) {
		this.q33 = q33;
	}

	public String getQ34() {
		return q34;
	}

	public void setQ34(String q34) {
		this.q34 = q34;
	}

	public String getQ35() {
		return q35;
	}

	public void setQ35(String q35) {
		this.q35 = q35;
	}

	public String getQ36() {
		return q36;
	}

	public void setQ36(String q36) {
		this.q36 = q36;
	}

	public String getQ37() {
		return q37;
	}

	public void setQ37(String q37) {
		this.q37 = q37;
	}

	public String getQ38() {
		return q38;
	}

	public void setQ38(String q38) {
		this.q38 = q38;
	}

	public String getQ39() {
		return q39;
	}

	public void setQ39(String q39) {
		this.q39 = q39;
	}

	public String getQ40() {
		return q40;
	}

	public void setQ40(String q40) {
		this.q40 = q40;
	}


	@Override
	public String toString() {
		return "TestInfo{" +
				"id=" + id +
				", username='" + username + '\'' +
				", q1='" + q1 + '\'' +
				", q2='" + q2 + '\'' +
				", q3='" + q3 + '\'' +
				", q4='" + q4 + '\'' +
				", q5='" + q5 + '\'' +
				", q6='" + q6 + '\'' +
				", q7='" + q7 + '\'' +
				", q8='" + q8 + '\'' +
				", q9='" + q9 + '\'' +
				", q10='" + q10 + '\'' +
				", q11='" + q11 + '\'' +
				", q12='" + q12 + '\'' +
				", q13='" + q13 + '\'' +
				", q14='" + q14 + '\'' +
				", q15='" + q15 + '\'' +
				", q16='" + q16 + '\'' +
				", q17='" + q17 + '\'' +
				", q18='" + q18 + '\'' +
				", q19='" + q19 + '\'' +
				", q20='" + q20 + '\'' +
				", q21='" + q21 + '\'' +
				", q22='" + q22 + '\'' +
				", q23='" + q23 + '\'' +
				", q24='" + q24 + '\'' +
				", q25='" + q25 + '\'' +
				", q26='" + q26 + '\'' +
				", q27='" + q27 + '\'' +
				", q28='" + q28 + '\'' +
				", q29='" + q29 + '\'' +
				", q30='" + q30 + '\'' +
				", q31='" + q31 + '\'' +
				", q32='" + q32 + '\'' +
				", q33='" + q33 + '\'' +
				", q34='" + q34 + '\'' +
				", q35='" + q35 + '\'' +
				", q36='" + q36 + '\'' +
				", q37='" + q37 + '\'' +
				", q38='" + q38 + '\'' +
				", q39='" + q39 + '\'' +
				", q40='" + q40 + '\'' +
				", testid='" + testid + '\'' +
				", totalScore=" + totalScore +
				'}';
	}
}
