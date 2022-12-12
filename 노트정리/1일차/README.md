# SQL 노트정리1

## 시작하기  
#
1. cmd 이용 접속  
    <br/>
    <pre><code>sqlplus {id}/{password}</code></pre>
    <br/>
2. 비밀번호 변경  
    <br/>
    <pre><code>alter user {id} identified by {비밀번호}</code></pre>
    <br/>
3. clear screen  
    <br/>
    <pre><code>cl scr</code></pre>
#
## DDL(Data Definition Language)
#
### Create Drop Alter Truncate
<br/>

1. Table 생성  
    <br/>
    <pre><code>create table {table_name}({field1} {field1_type} {is_null}, {field2} {field2_type} {is_null}, ...); </code></pre>
    is_null => null or not null  
    <br/>
2. Table 제거    
    <br/>
    <pre><code>drop table {table_name};</code></pre>
    <br/>
3. Table 변경  
    <br/>
    1. 테이블명 수정  
        <br/>
        <pre><code>alter table {old_name} rename to {new_name};</code></pre>  
        <br/>
    2. 컬럼 수정  
        <br/>
        1. 컬럼 추가  
            <br/>
            <pre><code>alter table {tab_name} add {column_name} {type} {is_null}</code></pre>
            <br/>
        2. 컬럼 속성 변경  
            <br/>
            <pre><code>alter table {tab_name} modify {column_name} {type} {is_null}</code></pre>
            <br/>
        3. 컬럼명 변경  
            <br/>
            <pre><code>alter table {tab_name} rename column {old_name} to {new_name}</code></pre>
            <br/>
        4. 컬럼 삭제  
            <br/>
            <pre><code>alter table {tab_name} drop column {column_name}</code></pre>
            <br/>
4. Table 데이터 삭제  
   <br/>
   <pre><code>truncate table {table_name};</code></pre>
   <br/>

#
## DML(Data Manipulation Language)
#
### SELECT INSERT UPDATE DELETE  
<br/>

1. SELECT  
   <br/>
   1. 테이블 field 조회  
      <br/>
      <pre><code>select {field1},{field2}, ... from {tab_name};</code></pre>
      <br/>
   2. 별칭 + where(and or / =not() / between {a} and {b} / >= <=  =)  
        <br/>
        <pre><code>select {field1} as {별칭1}, {field2} as {별칭2} from {tab_name} where {별칭1}.dno = {별칭2}.dno;</code></pre>
        <br/>

        ### 문자열다루기  

        <br/>
        포함  
        <pre><code>whre {field} like '%k%'</code></pre>
        시작
        <pre><code>whre {field} like 'k%'</code></pre> 
        끝
        <pre><code>whre {field} like '%k'</code></pre> 
        자리 지정
        <pre><code>whre {field} like '_k%'</code></pre> 
        <br/>

        ### 집계함수  

        <br/>

        <pre><code>sum() count() avg() max() min()</code></pre>

        <br/>

   3. 중복제거
      <br/>
      <pre><code>select distinct {filed} from {tab_name};</code></pre>
      <br/>

   4. group by  
      <br/>
      <pre><code>select {field}, {집계함수} from {tab_name} group by {field} having {조건};</code></pre>
      <br/>

#
## DCL(Data Control Language)
#
### GRANT REVOKE COMMIT ROLLBACK  
<br/>

1. Grant(권한부여)  
    <br/>
    <pre><code>grant {권한1},{권한2}, .. to {id}</code></pre>
    <br/>
2. Revoke(권한부여 취소)  
    <br/>
    <pre><code>revoke {권한1},{권한2}, .. from {id}</code></pre>
    <br/>