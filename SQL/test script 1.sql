select dtx.candidate_id,
h.hua_user_firstname,
                                    h.hua_user_lastname,
                                    hf.hua_file_id,
                                    hf.hua_file_name,
                                    hf.hua_file_mimetype,
                                    hfb.base64_string,
                                    hfb.id
                                    from
                                    hua_file hf,
                                    hua_user h,
                                    hua_attachment ha,
                                    hua_file_base64 hfb,
                                    deltek_xml_temp dtx
                                    where hf.hua_file_id = ha.hua_file_id
                                    and hf.hua_file_id = hfb.original_file_name
                                    and h.hua_user_id = hf.hua_user_id
                                    and dtx.first_name = h.hua_user_firstname
                                    and dtx.last_name = h.hua_user_lastname
                                    and hua_user_firstname in ('Abraham',
                                                                'Adele',
                                                                'Adriaan',
                                                                'Aldo',
                                                                'Allister',
                                                                'Anjaneyulu',
                                                                'Anthony',
                                                                'Ash',
                                                                'Athayanda',
                                                                'Audry'
                                    ) and hua_user_lastname in ('Mbomba',
                                                                'Cloete',
                                                                'Jansen van Rensburg',
                                                                'Damon',
                                                                'Mars',
                                                                'Gunda',
                                                                'Koyabe',
                                                                'Bheekun',
                                                                'Lungu',
                                                                'Ayivor');
                                                                
select * from deltek_xml_temp;
truncate deltek_xml_temp;