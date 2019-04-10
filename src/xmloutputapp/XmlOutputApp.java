/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xmloutputapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import java.util.ArrayList;
import java.util.Collection;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Attr;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XmlOutputApp {

//    public static void mysqlCon(){
//        try{
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Workday","root","root"); 
//        Statement stmt = con.createStatement();
//        ResultSet rs = stmt.executeQuery("SELECT * FROM HUA_FILE_BASE64 where id between 1 and 200");
//        ArrayList<String> list= new ArrayList<String>();
//        while(rs.next())
//        {
//            //System.out.println(rs.getString(1) + "\n" + rs.getString(2)+ "\n" + rs.getString(3)+ "\n" + rs.getString(4)); //check this!
//            
//            
//            list.add(rs.getString("id"));
//            list.add(rs.getString("original_file_name"));
//            list.add(rs.getString("base64_string"));
//            list.add(rs.getString("original_file_directory"));
//            list.add(rs.getString("date_converted"));
//            
//
//            String[] result = new String[list.size()];
//            result = list.toArray(result);
//
//            for(int i =0; i<result.length; i++){
//                System.out.println(result[i]);
//            }
//        }
//        
//        con.close();
//        }catch(SQLException e){
//            e.printStackTrace();
//            //logs.append("Error: " + e + "\n");
//        }catch(ClassNotFoundException ex){
//            ex.printStackTrace();
//            //logs.append("Error: " + ex + "\n");
//        }
//        
//    }
    
    public static void main(String argv[]) throws TransformerException, SAXException, IOException, ParserConfigurationException {
       
        //mysqlCon();
        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
        Document document = documentBuilder.parse("QCandidate_Attachments_template.xml");
        Element root = document.getDocumentElement();

        Collection<Server> servers = new ArrayList<Server>();
        servers.add(new Server());
        //int spreadsheetkey = 0;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/workdayprod2","root","root"); 
        Statement stmt = con.createStatement();
        //ResultSet rs = stmt.executeQuery("SELECT * FROM HUA_FILE_BASE64 where id between 1 and 5");
//        ResultSet rs = stmt.executeQuery("select atsc.ats_candidate_id,\n" +
//            "hf.hua_user_id,\n" +
//            "hf.hua_file_id,\n" +
//            "hf.hua_file_name,\n" +
//            "hf.hua_file_mimetype,\n" +
//            "hfb.base64_string,\n" +
//            "hfb.id\n" +
//            "from ats_candidate atsc,\n" +
//            "hua_file hf,\n" +
//            "hua_attachment ha,\n" +
//            "hua_file_base64 hfb\n" +
//            "where hf.hua_file_id = ha.hua_file_id\n" +
//            "and hf.hua_file_id = hfb.original_file_name\n" +
//            "and atsc.ats_candidate_id = hua_user_id\n" +
//            "and hfb.id between 5001 and 6000");
        ResultSet rs = stmt.executeQuery("select dtx.candidate_id,\n" +
                                    "h.hua_user_firstname,\n" +
                                    "h.hua_user_lastname,\n" +
                                    "hf.hua_file_id,\n" +
                                    "hf.hua_file_name,\n" +
                                    "hf.hua_file_mimetype,\n" +
                                    "hfb.base64_string,\n" +
                                    "hfb.id\n" +
                                    "from \n" +
                                    "hua_file hf,\n" +
                                    "hua_user h,\n" +
                                    "hua_attachment ha,\n" +
                                    "hua_file_base64 hfb,\n" +
                                    "deltek_xml_temp dtx\n" +
                                    "where hf.hua_file_id = ha.hua_file_id\n" +
                                    "and hf.hua_file_id = hfb.original_file_name\n" +
                                    "and h.hua_user_id = hf.hua_user_id\n" +
                                    "and dtx.first_name = h.hua_user_firstname\n" +
                                    "and dtx.last_name = h.hua_user_lastname \n" +
                                    "and hua_user_firstname in ('Jane',\n" +
"'Suzette',\n" +
"'Bradford',\n" +
"'Timothy',\n" +
"'Salomi',\n" +
"'khanyisa',\n" +
"'Ronald',\n" +
"'Nompumelelo',\n" +
"'Khumbudzo',\n" +
"'Maretha',\n" +
"'Bashni',\n" +
"'Dyke',\n" +
"'Tanyaradzwa Obert',\n" +
"'Gadifele',\n" +
"'lebogang',\n" +
"'curstan',\n" +
"'Jacques',\n" +
"'Peterson Thabang',\n" +
"'Pauline',\n" +
"'Billy',\n" +
"'Ursula',\n" +
"'Miles',\n" +
"'Megan',\n" +
"'Mushfiqoh',\n" +
"'Xolani',\n" +
"'Aldo',\n" +
"'Sherman',\n" +
"'Zandile',\n" +
"'Monika',\n" +
"'Nagesh',\n" +
"'Clive',\n" +
"'Anthony',\n" +
"'Lehlohonolo',\n" +
"'Kanyisa',\n" +
"'Bhekokuhle Innocent',\n" +
"'silence',\n" +
"'Theodore',\n" +
"'Mark',\n" +
"'Sheila',\n" +
"'Tania',\n" +
"'Moses',\n" +
"'Allister',\n" +
"'Francois',\n" +
"'masixole',\n" +
"'Cabangile',\n" +
"'Ismaeel',\n" +
"'Wesley',\n" +
"'Chris',\n" +
"'Roelof',\n" +
"'Frans Mpho',\n" +
"'Bongani',\n" +
"'Heather',\n" +
"'PRABANAND',\n" +
"'Tshabo',\n" +
"'Murali',\n" +
"'Freddy Sipho',\n" +
"'Dereck',\n" +
"'Lloyd',\n" +
"'Shepherd',\n" +
"'Brian',\n" +
"'Zibusiso',\n" +
"'Cindy',\n" +
"'Sfiso',\n" +
"'Wesleigh',\n" +
"'Nkhensani',\n" +
"'Natasha',\n" +
"'Adele',\n" +
"'Gomolemo',\n" +
"'Abraham',\n" +
"'Philip',\n" +
"'Paballo',\n" +
"'Rochelle',\n" +
"'Rushdia',\n" +
"'Ockert',\n" +
"'Devashree',\n" +
"'Julius',\n" +
"'Paul',\n" +
"'Josh',\n" +
"'Tinashe',\n" +
"'Hamzah',\n" +
"'Lesibe',\n" +
"'Reginald',\n" +
"'Rinae Rodney',\n" +
"'morena',\n" +
"'Braj',\n" +
"'Nthavhiseni Johannah',\n" +
"'Steven',\n" +
"'Filip',\n" +
"'Nyakalo',\n" +
"'Ditshwanelo',\n" +
"'Peter',\n" +
"'Siyabonga',\n" +
"'thendo',\n" +
"'Thato',\n" +
"'Muphulusi',\n" +
"'londoloza',\n" +
"'Funeka',\n" +
"'Melicia',\n" +
"'Dakalo',\n" +
"'Thabo',\n" +
"'Gavin',\n" +
"'Khutso',\n" +
"'munashe',\n" +
"'Anjaneyulu',\n" +
"'Progress',\n" +
"'sipho',\n" +
"'Linda',\n" +
"'Thobela',\n" +
"'Himal',\n" +
"'Athayanda',\n" +
"'Nthabeleng',\n" +
"'Meshach',\n" +
"'Danie',\n" +
"'Thembile',\n" +
"'Bushy',\n" +
"'maipfi',\n" +
"'Sinini',\n" +
"'Maphuthi',\n" +
"'Richard',\n" +
"'Obakeng Neo',\n" +
"'Lungelo',\n" +
"'Luzuko',\n" +
"'Nhlamulo Trust',\n" +
"'Pravir',\n" +
"'Shane',\n" +
"'Siphe',\n" +
"'Rita',\n" +
"'Heinrich',\n" +
"'Nita',\n" +
"'Shaun',\n" +
"'Sebonyane',\n" +
"'Elmarie',\n" +
"'Charleen',\n" +
"'carla',\n" +
"'Sipho',\n" +
"'Mashudu',\n" +
"'Gcobani',\n" +
"'Nomonde',\n" +
"'Esayvanie (Sharona)',\n" +
"'Charlene',\n" +
"'Etienne',\n" +
"'Hennie',\n" +
"'Audry',\n" +
"'Jessica',\n" +
"'Refiloe',\n" +
"'Ricardo',\n" +
"'Jaco',\n" +
"'Emeric',\n" +
"'MASANDE FRANK',\n" +
"'Olaniyi',\n" +
"'Ryno',\n" +
"'Garreth',\n" +
"'Tristan',\n" +
"'Charles',\n" +
"'Adriaan',\n" +
"'Bongani',\n" +
"'Ash',\n" +
"'ndavheheleseni',\n" +
"'Samson'" +
                                    ") and hua_user_lastname in ('Mpete',\n" +
"'Meyer',\n" +
"'Kotiah',\n" +
"'Muller',\n" +
"'Naidoo',\n" +
"'mabasa',\n" +
"'Muganwa',\n" +
"'Mhlanga',\n" +
"'Mufamadi',\n" +
"'Alberts',\n" +
"'Thaver',\n" +
"'Morake',\n" +
"'Tanyanyiwa',\n" +
"'Sekwaila',\n" +
"'masete',\n" +
"'pieterse',\n" +
"'de Villiers',\n" +
"'Malete',\n" +
"'Mutemeri',\n" +
"'Mashele',\n" +
"'McGloughlin',\n" +
"'Wolfe',\n" +
"'Huckle',\n" +
"'Samodien',\n" +
"'Nxadi',\n" +
"'Damon',\n" +
"'Van Der Westhuizen',\n" +
"'Mnyanda',\n" +
"'Damyanova',\n" +
"'Navale',\n" +
"'Munemo',\n" +
"'Koyabe',\n" +
"'Majoro',\n" +
"'Mtwecu',\n" +
"'Thabethe',\n" +
"'sekowe',\n" +
"'Weilbach',\n" +
"'Halpern',\n" +
"'Welch',\n" +
"'Forlee',\n" +
"'Makakase',\n" +
"'Mars',\n" +
"'Luyt',\n" +
"'mpokeli',\n" +
"'Khumalo',\n" +
"'Salie',\n" +
"'Nel',\n" +
"'Durant',\n" +
"'Du Plooy',\n" +
"'Segwale',\n" +
"'Sono',\n" +
"'Paolini',\n" +
"'RATHNAM',\n" +
"'Monethi',\n" +
"'krishana',\n" +
"'Mahhumane',\n" +
"'Zenda',\n" +
"'McIntyre',\n" +
"'Gowera',\n" +
"'Ncube',\n" +
"'Ngono',\n" +
"'Serfontein',\n" +
"'Manana',\n" +
"'Lloyd',\n" +
"'Rikhotso',\n" +
"'Fourie',\n" +
"'Cloete',\n" +
"'Molotsane',\n" +
"'Mbomba',\n" +
"'Frost',\n" +
"'Lekhula',\n" +
"'Janse van Rensburg',\n" +
"'Salem',\n" +
"'Van den Berg',\n" +
"'Seejiram',\n" +
"'Makoko',\n" +
"'Mashilangwako',\n" +
"'Doans',\n" +
"'Munyaka',\n" +
"'Ismail',\n" +
"'Manaka',\n" +
"'Vheriwa',\n" +
"'Ramadzhiela',\n" +
"'xaba',\n" +
"'Singh',\n" +
"'Mulaiwa',\n" +
"'Kahomboshi',\n" +
"'Gugutkov',\n" +
"'Molakeng',\n" +
"'Sello',\n" +
"'Ngubane',\n" +
"'Malepe',\n" +
"'siphuma',\n" +
"'Maleka',\n" +
"'Dzivhani',\n" +
"'Kunene',\n" +
"'Ntlangulela',\n" +
"'Mabuye',\n" +
"'Nemushungwa',\n" +
"'Vilakazi',\n" +
"'Rose',\n" +
"'Mothapo',\n" +
"'maponga',\n" +
"'Gunda',\n" +
"'Mlambo',\n" +
"'moerane',\n" +
"'Dlamini',\n" +
"'Mananga',\n" +
"'Chowhan',\n" +
"'Lungu',\n" +
"'Mashapa',\n" +
"'Joseph',\n" +
"'van der Bank',\n" +
"'Bangani',\n" +
"'Netshidaulu',\n" +
"'sinthumule',\n" +
"'Ncube',\n" +
"'Rashaya',\n" +
"'Marais',\n" +
"'Ditema',\n" +
"'Qwabe',\n" +
"'Sam',\n" +
"'Ngoveni',\n" +
"'Ishvarlal',\n" +
"'Muthu',\n" +
"'Gwaza',\n" +
"'de Canha',\n" +
"'Barnes',\n" +
"'Hermans',\n" +
"'Moodley',\n" +
"'Eheletsane',\n" +
"'Fouche',\n" +
"'Niemand',\n" +
"'kruger',\n" +
"'Nkabinde',\n" +
"'Mulaudzi',\n" +
"'Wophula',\n" +
"'Somana',\n" +
"'Pillay',\n" +
"'Bezuidenhout',\n" +
"'Bronkhorst',\n" +
"'Burger',\n" +
"'Ayivor',\n" +
"'Hempel',\n" +
"'Mohohlo',\n" +
"'Dos Ramos Correia',\n" +
"'Grant',\n" +
"'Malan',\n" +
"'DAMANE',\n" +
"'Olatunji',\n" +
"'Botha',\n" +
"'Hall',\n" +
"'Potgieter',\n" +
"'Elumeze',\n" +
"'Jansen van Rensburg',\n" +
"'Nqubuka',\n" +
"'Bheekun',\n" +
"'Tshivhase',\n" +
"'Shongwe')");
        
        
        //ArrayList<String> list= new ArrayList<String>();
        while(rs.next())
        {

            for (Server server : servers) {
                NodeList nodes = document.getElementsByTagName("RowData");

                // server elements
                Element newRow = document.createElement("Row");
                Attr attrRow = document.createAttribute("ss:AutoFitHeight");
                attrRow.setValue("0");
                newRow.setAttributeNode(attrRow);


                Element cell1 = document.createElement("Cell");
                cell1.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell1);
                
                Element data0 = document.createElement("Data");
                Attr attrData19 = document.createAttribute("ss:Type");
                attrData19.setValue("String");
                data0.setAttributeNode(attrData19);
                data0.appendChild(document.createTextNode(rs.getString("hua_user_firstname")));
                cell1.appendChild(data0);

                Element cell2 = document.createElement("Cell");
                cell2.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell2);
                
                // Spreadsheet ID
                Element data1 = document.createElement("Data");
                Attr attrData = document.createAttribute("ss:Type");
                attrData.setValue("String");
                data1.setAttributeNode(attrData);
                //data1.appendChild(document.createTextNode(server.getSpreadSheetKey()));
                data1.appendChild(document.createTextNode(rs.getString("id")));
                //data1.appendChild(document.createTextNode("Ferrari 202"));
                cell2.appendChild(data1);

                Element cell3 = document.createElement("Cell");
                cell3.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell3);

                Element cell4 = document.createElement("Cell");
                cell4.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell4);
                
                // Candidate ID
                Element data2 = document.createElement("Data");
                Attr attrData2 = document.createAttribute("ss:Type");
                attrData2.setValue("String");
                data2.setAttributeNode(attrData2);
                data2.appendChild(document.createTextNode(rs.getString("candidate_id")));
                //data2.appendChild(document.createTextNode("Ferrari 202"));
                cell4.appendChild(data2);

                Element cell5 = document.createElement("Cell");
                cell5.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell5);

                Element cell6 = document.createElement("Cell");
                cell6.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell6);

                Element cell7 = document.createElement("Cell");
                cell7.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell7);

                Element cell8 = document.createElement("Cell");
                cell8.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell8);

                Element cell9 = document.createElement("Cell");
                cell9.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell9);

                Element cell10 = document.createElement("Cell");
                cell10.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell10);

                Element cell11 = document.createElement("Cell");
                cell11.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell11);

                Element cell12 = document.createElement("Cell");
                cell12.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell12);

                Element cell13 = document.createElement("Cell");
                cell13.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell13);
                
                // Original File Name
                Element data3 = document.createElement("Data");
                Attr attrData3 = document.createAttribute("ss:Type");
                attrData3.setValue("String");
                data3.setAttributeNode(attrData3);
                data3.appendChild(document.createTextNode(rs.getString("hua_file_name")));
                //data1.appendChild(document.createTextNode("Ferrari 202"));
                cell13.appendChild(data3);

                Element cell14 = document.createElement("Cell");
                cell14.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell14);
                
                // Base64 string
                Element data4 = document.createElement("Data");
                Attr attrData4 = document.createAttribute("ss:Type");
                attrData4.setValue("String");
                data4.setAttributeNode(attrData4);
                data4.appendChild(document.createTextNode(rs.getString("base64_string")));
                //data1.appendChild(document.createTextNode("Ferrari 202"));
                cell14.appendChild(data4);

                Element cell15 = document.createElement("Cell");
                cell15.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell15);
                
                // MIME type
                Element data5 = document.createElement("Data");
                Attr attrData5 = document.createAttribute("ss:Type");
                attrData5.setValue("String");
                data5.setAttributeNode(attrData5);
                data5.appendChild(document.createTextNode(rs.getString("hua_file_mimetype")));
                //data1.appendChild(document.createTextNode("Ferrari 202"));
                cell15.appendChild(data5);

                Element cell16 = document.createElement("Cell");
                cell16.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell16);

                Element cell17 = document.createElement("Cell");
                cell17.appendChild(document.createTextNode(server.getBlankCell()));
                newRow.appendChild(cell17);
                
                // OTHER DOCUMENTS
                Element data6 = document.createElement("Data");
                Attr attrData6 = document.createAttribute("ss:Type");
                attrData6.setValue("String");
                data6.setAttributeNode(attrData6);
                data6.appendChild(document.createTextNode(server.getDocumentCategory()));
                //data1.appendChild(document.createTextNode("Ferrari 202"));
                cell17.appendChild(data6);

                root.appendChild(newRow);
                nodes.item(0).getParentNode().insertBefore(newRow, nodes.item(0));
    
            }
        
//        list.add(rs.getString("id"));
//        list.add(rs.getString("original_file_name"));
//        list.add(rs.getString("base64_string"));
//        list.add(rs.getString("original_file_directory"));
//        list.add(rs.getString("date_converted"));
//            
//
//            String[] result = new String[list.size()];
//            result = list.toArray(result);
//
//            for(int i =0; i<result.length; i++){
//                System.out.println(result[i]);
//            }
        }
        
        con.close();
        }catch(SQLException e){
            e.printStackTrace();
            //logs.append("Error: " + e + "\n");
        }catch(ClassNotFoundException ex){
            ex.printStackTrace();
            //logs.append("Error: " + ex + "\n");
        }
        
        DOMSource source = new DOMSource(document);

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        StreamResult result = new StreamResult("deltekPRODattachments2.xml");
        transformer.transform(source, result);
    }

    public static class Server {
        //public String getName() { return "foo"; }
        
        //public Integer getPort() { return 12345; }
        
        public String getBlankCell() {return "";}
        
        public String getcandidateID() {
            //mysqlCon();
            //String cancdidateID = rs.getString(1);
            return "6512919";
        }
        
        public String getSpreadSheetKey() {return "7818";}
        
        public String getoriginalFileName() {return "test.txt";}
        
        public String getDocumentCategory() {return "OTHER_DOCUMENTS";}
        
        public String getbase64() {return "UEsDBAoAAAAAAAAAIQBexjIMJwAAACcAAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2FzaXMub3BlbmRvY3VtZW50LnRleHRQSwMEFAAGAAgAAAAhAFk78cR6AQAAaQUAAAwAAABzZXR0aW5ncy54bWyMU8tugzAQvFfqPyDfwSG5JFZJbj01t";}
        
        public String getoriginalFilePath() {return "\\britehouse_docs\\documents\\00\\00\\00\\00\\00\\10";}
    }

   }
