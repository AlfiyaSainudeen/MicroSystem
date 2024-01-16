select st.stor_id,st.stor_name,s.ord_num,s.qty,t.title,t.type,t.price from stores st join sales s 
on st.stor_id=s.stor_id join titles t on s.title_id=t.title_id


--