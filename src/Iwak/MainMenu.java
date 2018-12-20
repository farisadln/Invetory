package Iwak;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class MainMenu extends JFrame implements ActionListener
{   JFrame jf;
	JMenuBar mbar;
	JMenu m1,m2,m3,m5;
	JMenuItem m1_1,m1_2,m1_3,m1_4,m1_5,m2_1,m2_2,m2_3,m2_4,m2_5,m3_1,m3_2,m5_1;
	JLabel l1,LogoColl;
	GridBagLayout gbl;

	public MainMenu()
	{
        jf=new JFrame();
		gbl=new GridBagLayout();
		jf.setLayout(gbl);



		mbar = new JMenuBar();
		jf.setJMenuBar(mbar);

		m1=new JMenu("Supplier");
		mbar.add(m1);
		m1_1 = new JMenuItem("Add New Supplier",new ImageIcon("src\\images\\addnew.png"));
		m1.add(m1_1);
		m1_2 = new JMenuItem("search Supplier",new ImageIcon("src\\images\\search.png"));
		m1.add(m1_2);
		m1_3 = new JMenuItem("Update Supplier",new ImageIcon("src\\images\\update.png"));
		m1.add(m1_3);
		m1_4 = new JMenuItem("Delete Supplier",new ImageIcon("src\\images\\delete.png"));
		m1.add(m1_4);
	    m1_5 = new JMenuItem("List of Supplier",new ImageIcon("src\\images\\all.png"));
		m1.add(m1_5);

		m2=new JMenu("Fish");
		mbar.add(m2);
		m2_1 = new JMenuItem("Add New Fish",new ImageIcon("src\\images\\addnew.png"));
		m2.add(m2_1);
		m2_2 = new JMenuItem("search Fish",new ImageIcon("src\\images\\search.png"));
		m2.add(m2_2);
		m2_3 = new JMenuItem("Update Fish",new ImageIcon("src\\images\\update.png"));
		m2.add(m2_3);
		m2_4 = new JMenuItem("Delete Fish",new ImageIcon("src\\images\\delete.png"));
		m2.add(m2_4);
	    m2_5 = new JMenuItem("Stock of Fish",new ImageIcon("src\\images\\all.png"));
		m2.add(m2_5);


		m3=new JMenu("Report");
	    mbar.add(m3);
		m3_1 = new JMenuItem("Daily Purchase Report",new ImageIcon("src\\images\\report.png"));
		m3.add(m3_1);

		m3_2 = new JMenuItem("Suplier wise Fish Report",new ImageIcon("src\\images\\report.png"));
		m3.add(m3_2);
                
		

		m5=new JMenu("Exit");
		mbar.add(m5);
		m5_1 = new JMenuItem("Exit",new ImageIcon("src\\images\\exit.png"));
		m5.add(m5_1);

        m1_1.addActionListener(this);
		m1_2.addActionListener(this);
		m1_3.addActionListener(this);
		m1_4.addActionListener(this);
    	m1_5.addActionListener(this);

		m2_1.addActionListener(this);
		m2_2.addActionListener(this);
		m2_3.addActionListener(this);
		m2_4.addActionListener(this);
	    m2_5.addActionListener(this);

		m3_1.addActionListener(this);
		m3_2.addActionListener(this);
		//m4_1.addActionListener(this);
		m5_1.addActionListener(this);

		jf.setTitle("Main Menu");
		jf.setLocation(20,20);
	    jf.setSize(900,700);
	    jf.setResizable(false);
		jf.getContentPane().setBackground(Color.pink);
		jf.setVisible(true);

	}

	public void actionPerformed(ActionEvent ae)
	{

	  if(ae.getSource()==m1_1)
		{
		  new AddNewSupplier();
		}
		else if(ae.getSource()==m1_2)
		{
		 new SearchSupplier();
		}
		else if(ae.getSource()==m1_3)
		{
		new UpdateSupplier();
		}
		else if(ae.getSource()==m1_4)
		{
		new DeleteSupplier();
		}
	    else if(ae.getSource()==m1_5)
		{
		  new SupplierList();
		}


		else if(ae.getSource()==m2_1)
		{
			new AddNewFish();
		}
		else if(ae.getSource()==m2_2)
		{
			new SearchFish();
		}
		else if(ae.getSource()==m2_3)
		{
			new UpdateFish();
		}
		else if(ae.getSource()==m2_4)
		{
			new DeleteFish();
		}
		else if(ae.getSource()==m2_5)
		{
			new FishList();
		}

		 else if(ae.getSource()==m3_1)
		 {
		   new DailyPurchaseReport();
		 }

		  else if(ae.getSource()==m3_2)
		 {
		   new SupplierWiseMedList();
		 }

	
		else if(ae.getSource()==m5_1)
		{
		  System.exit(0);
		}

  }

	public static void main(String args[])
	{
		new MainMenu();
	}
}
