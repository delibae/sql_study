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