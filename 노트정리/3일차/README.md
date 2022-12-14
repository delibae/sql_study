# Table

1. CREATE  
    <pre><code>create table {t_name}{
    {column1} {data_type} {is_null},
    {column2} {data_type} {is_null},
    ....
    }</code></pre>
    <pre><code>create table {t_name} as select * from {table_loction}</code></pre>   

2. DESC(구조확인)
    <pre><code>DESC {t_name}</code></pre>  

3. ALTER
    <pre><code>ALTER TABLE {t_name} {ADD or MODIFY or RENAME COLUMN or DROP COLUMN} {column_name} ...</code></pre>
4. Rename table
    <pre><code>Rename {old} to {new}</code></pre>
5. 휴지동 내용 확인
    <pre><code>show recylebin</code></pre>
6. 휴지통 복원
    <pre><code>FLASHBACK TABLE {t_name} TO BEFORE DROP</pre></code>
7. 영구 삭제
    <pre><code>purge table {t_name}</code></pre>  
    <br/>

# CRUD(Create Read Update Delete)  

1. Create
    <pre><code>inert into {t_name}({c_name},{c_name2},....)
    values({v_1},{v_2},...)</code></pre>

2. Read
    <pre><code>select {c_name},{c_name2} from {t_name} where {조건}</pre></code>

3. Update
    <pre><code>UPDATE {t_name} set {설정 구문} {where 절}</code></pre>
    ex
    <pre><code>update emp1 set deptno = 30 where deptno = 20</code></pre>

4. Delete
    <pre><code>DELETE from {t_name} {where 절}</code></pre>

5. Rollback
   <pre><code>Rollback Commit</code></pre>  
   <br/>

# 테이블 제약 조건

1. PK  
    PK =  Unique + Not Null  
    style1
    <pre><code>{c_name} primary key
    </code></pre>
    style2
    <pre><code>primary key({c_name})</code></pre>

2. FK  
   FK must Unique  
   style1
   <pre><code>{c_name} {c_type} references {ref_t_name}({ref_c_name})</code></pre> 
   style2
   <pre><code>Foreign Key({c_name}) References {ref_tab(ref_col)}</code></pre>

3. is_null  
   <pre><code>{c_name} {Null or NOT NULL}</code></pre>

4. UK
   style1
   <pre><code>{c_name} {c_type} UNIQUE</code></pre>
   style2
   <pre><code>Unique({c_name})</code></pre>

5. Check
   <pre><code>{c_name} check({조건})</code></pre>  
   ex
   <pre><code>gender varchar(10) check(gender in('M','F'))</code></pre>  

6. Default
   <pre><code>{c_name} Defalut({value})</code></pre>

7. constraint(제약조건명 지정)
   <pre><code>CONSTRAINT {제약조건명} {제약조건}
    </code></pre>  
    <br/>
    
    제약조건명 지정 예시
    
    <pre><code>CREATE TABLE emp09 

    (

    empno number(2),

    ename varchar2(20) not null,

    addr varchar2(10),

    deptno number(2),

    CONSTRAINT emp09_empno_pk Primary Key(empno),

    CONSTRAINT emp09_addr_uq Unique(addr),

    CONSTRAINT emp09_deptno_fk Foreign Key(deptno) References dept(deptno) 

    );
    </code></pre>

    ### 제약조건 확인

    <pre><code>select * from user_contraints where TABLE_NAME = 'TABLENAME';</code></pre>  
    <br/>

# Sequence

1. 생성  
    <br/>
    <pre><code>CREATE SEQUENCE {seq_name} start with {s_point} increment by {plus_num};</code></pre>
    *무조건 증가만 감소 없음  
    <br/>
2. 입력  
    <br/>
    <pre><code>insert into {tab_name} values({seq_name}.nextval,{value2},...)
    </code></pre>  
    <br/>
3. 확인  
    <br/>
    <pre><code>select {seq_name}.currVal from dual;</code></pre>  
    <br/>
4. 수정  
    <br/>
    - max 수정
        <pre><code>alter sequence {seq_name} maxValue {value};
        </code></pre>  
    <br/>  

5. 삭제  
    <br/>  
    <pre><code>drop sequence {seq_name};</code></pre>  
    <br/>

# Transaction(commit, rollback)

1. commit  
    <br/>
    commit 입력해야 저장이 됨  
    새 cmd 창에서도 보임  
    <br/>
2. rollback  
    <br/>
    실행취소  
    <br/>
3. 병목현상 해결  
    <br/>
   락걸기
   <pre><code>ALTER TABLE {t_name} SET UNUSED({c_name});</code></pre>  
   *가벼운 것부터 우선작업  
    <br/>
    컬럼제거
    <pre><code>ALTER TABLE {t_name} DROP UNUSED COLUMNS;</code></pre>  
    <br/>
4. savepoint  
   <br/> 
   <pre><code>savepoint {name}
   .....
   rollback to {name}
   </code></pre>  
<br/>

# View

1. 생성  
    <br/>
    <pre><code>create view({별칭1},{별칭2},...){v_name} as {select where 문}</code></pre> 
    * 생성시 column 별칭 부여 가능  
 <br/>  

1. 입력  
    <br/>
    <pre><code>insert into {v_name}({c_name},{c2_name},...) values({v1},{v2},..)</code></pre>  
    *원본 데이터 수정 가능  
    <br/>  
    
2. 수정  
   <br/>
    <pre><code>replace ...이하 create와 동일</code></pre>  
    <br/>  
3. 확인  
   <br/>
   <pre><code>select * from {v_name}</code></pre>  
   <br/>  
4. 삭제  
   <br/>
   <pre><code>drop view {v_name}</code></pre>  
   <br/>  

*join을 통해서도 생성 가능  

\*별칭.* => 별칭 테이블 열 전체 선택  
<br/>  

# Top Query  

<br/>  

목표: 특정 기준(where절)에 따라 정렬후 상위 n개 출력


1. 뷰 생성  
    <br/>
    <pre><code>create view {v_name} as {select where 문}</pre></code>  
    <br/>

2. 상위 n개만 출력  
   <br/>
   <pre><code> select * from {v_name} where rownum <= n</code></pre>
   
### 인라인 구문 활용

<pre><code>select * from ({select where 문}) where rownum <= n</code></pre>