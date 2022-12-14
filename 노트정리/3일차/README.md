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