package com.heima.test.utils;

import com.heima.test.domain.TestInfo;

import java.util.Map;

public class ScoreUtils {

    /**
     * 就业班开班考试分数计算规则
     * @return
     */
    public static Double getSeniorScore(TestInfo testInfo){
        double score = 0;
        //获取正确答案
        Map<String, String> answerMap = CommonUtils.getSeniorAnswerMap();
        if(answerMap.get("q1").equals(testInfo.getQ1())){
            score+=4;
        }
        if(answerMap.get("q2").equals(testInfo.getQ2())){
            score+=4;
        }
        if(answerMap.get("q3").equals(testInfo.getQ3())){
            score+=4;
        }
        if(answerMap.get("q4").equals(testInfo.getQ4())){
            score+=4;
        }
        if(answerMap.get("q5").equals(testInfo.getQ5())){
            score+=4;
        }
        if(answerMap.get("q6").equals(testInfo.getQ6())){
            score+=4;
        }
        if(answerMap.get("q7").equals(testInfo.getQ7())){
            score+=4;
        }
        if(answerMap.get("q8").equals(testInfo.getQ8())){
            score+=4;
        }
        if(answerMap.get("q9").equals(testInfo.getQ9())){
            score+=4;
        }
        if(answerMap.get("q10").equals(testInfo.getQ10())){
            score+=4;
        }
        if(answerMap.get("q11").equals(testInfo.getQ11())){
            score+=4;
        }
        if(answerMap.get("q12").equals(testInfo.getQ12())){
            score+=4;
        }
        if(answerMap.get("q13").equals(testInfo.getQ13())){
            score+=4;
        }
        if(answerMap.get("q14").equals(testInfo.getQ14())){
            score+=4;
        }
        if(answerMap.get("q15").equals(testInfo.getQ15())){
            score+=4;
        }
        if(answerMap.get("q16").equals(testInfo.getQ16())){
            score+=5;
        }
        if(answerMap.get("q17").equals(testInfo.getQ17())){
            score+=5;
        }
        if(answerMap.get("q18").equals(testInfo.getQ18())){
            score+=5;
        }
        if(answerMap.get("q19").equals(testInfo.getQ19())){
            score+=5;
        }
        if(answerMap.get("q20").equals(testInfo.getQ20())){
            score+=5;
        }
        if(answerMap.get("q21").equals(testInfo.getQ21())){
            score+=5;
        }
        if(answerMap.get("q22").equals(testInfo.getQ22())){
            score+=5;
        }
        if(answerMap.get("q23").equals(testInfo.getQ23())){
            score+=5;
        }
        return score;
    }

    /**
     * 基础班开班考试分数计算规则
     * @return
     */
    public static Double getPrimaryScore(TestInfo testInfo){
        double score = 0;
        //获取正确答案
        Map<String, String> answerMap = CommonUtils.getPrimaryAnswerMap();
        if(answerMap.get("q1").equals(testInfo.getQ1())){
            score+=2.5;
        }
        if(answerMap.get("q2").equals(testInfo.getQ2())){
            score+=2.5;
        }
        if(answerMap.get("q3").equals(testInfo.getQ3())){
            score+=2.5;
        }
        if(answerMap.get("q4").equals(testInfo.getQ4())){
            score+=2.5;
        }
        if(answerMap.get("q5").equals(testInfo.getQ5())){
            score+=2.5;
        }
        if(answerMap.get("q6").equals(testInfo.getQ6())){
            score+=2.5;
        }
        if(answerMap.get("q7").equals(testInfo.getQ7())){
            score+=2.5;
        }
        if(answerMap.get("q8").equals(testInfo.getQ8())){
            score+=2.5;
        }
        if(answerMap.get("q9").equals(testInfo.getQ9())){
            score+=2.5;
        }
        if(answerMap.get("q10").equals(testInfo.getQ10())){
            score+=2.5;
        }
        if(answerMap.get("q11").equals(testInfo.getQ11())){
            score+=2.5;
        }
        if(answerMap.get("q12").equals(testInfo.getQ12())){
            score+=2.5;
        }
        if(answerMap.get("q13").equals(testInfo.getQ13())){
            score+=2.5;
        }
        if(answerMap.get("q14").equals(testInfo.getQ14())){
            score+=2.5;
        }
        if(answerMap.get("q15").equals(testInfo.getQ15())){
            score+=2.5;
        }
        if(answerMap.get("q16").equals(testInfo.getQ16())){
            score+=2.5;
        }
        if(answerMap.get("q17").equals(testInfo.getQ17())){
            score+=2.5;
        }
        if(answerMap.get("q18").equals(testInfo.getQ18())){
            score+=2.5;
        }
        if(answerMap.get("q19").equals(testInfo.getQ19())){
            score+=2.5;
        }
        if(answerMap.get("q20").equals(testInfo.getQ20())){
            score+=2.5;
        }
        if(answerMap.get("q21").equals(testInfo.getQ21())){
            score+=2.5;
        }
        if(answerMap.get("q22").equals(testInfo.getQ22())){
            score+=2.5;
        }
        if(answerMap.get("q23").equals(testInfo.getQ23())){
            score+=2.5;
        } if(answerMap.get("q24").equals(testInfo.getQ24())){
            score+=2.5;
        } if(answerMap.get("q25").equals(testInfo.getQ25())){
            score+=2.5;
        } if(answerMap.get("q26").equals(testInfo.getQ26())){
            score+=2.5;
        } if(answerMap.get("q27").equals(testInfo.getQ27())){
            score+=2.5;
        } if(answerMap.get("q28").equals(testInfo.getQ28())){
            score+=2.5;
        } if(answerMap.get("q29").equals(testInfo.getQ29())){
            score+=2.5;
        } if(answerMap.get("q30").equals(testInfo.getQ30())){
            score+=2.5;
        } if(answerMap.get("q31").equals(testInfo.getQ31())){
            score+=2.5;
        } if(answerMap.get("q32").equals(testInfo.getQ32())){
            score+=2.5;
        } if(answerMap.get("q33").equals(testInfo.getQ33())){
            score+=2.5;
        } if(answerMap.get("q34").equals(testInfo.getQ34())){
            score+=2.5;
        } if(answerMap.get("q35").equals(testInfo.getQ35())){
            score+=2.5;
        } if(answerMap.get("q36").equals(testInfo.getQ36())){
            score+=2.5;
        } if(answerMap.get("q37").equals(testInfo.getQ37())){
            score+=2.5;
        } if(answerMap.get("q38").equals(testInfo.getQ38())){
            score+=2.5;
        } if(answerMap.get("q39").equals(testInfo.getQ39())){
            score+=2.5;
        } if(answerMap.get("q40").equals(testInfo.getQ40())){
            score+=2.5;
        }
        return score;
    }
}
