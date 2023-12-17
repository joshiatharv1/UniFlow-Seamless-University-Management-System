/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package ui;


import business.EmployerDirectory.EmployerGraphJPanel;
import business.LibOrgDirectory.LibGraphJPanel;
import business.StudentDirectory.StuGraphJPanel;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import java.awt.BorderLayout;

/**
 *
 * @author Atharv Joshi
 */
public class AccessControllerJPanel extends javax.swing.JPanel {

    /**
     * Creates new form AccessControllerJPanel
     */
    public AccessControllerJPanel() {
        initComponents();
        toggleAccountant.addActionListener(new ToggleButtonActionListener("Cafeteriaaccountant@university.com"));
        toggleCafeManager.addActionListener((ActionListener) new ToggleButtonActionListener("Cafeteriamanager@university.com"));
        toggleCatalogue.addActionListener(new ToggleButtonActionListener("Cataloguespecialist@university.com"));
        toggleHeadLibrabrian.addActionListener(new ToggleButtonActionListener("Headlibrarian@university.com"));
        toggleITmanger.addActionListener(new ToggleButtonActionListener("Itmanager@university.com"));
        toggleDatabaseAnalyst.addActionListener(new ToggleButtonActionListener("Databaseanalyst@university.com"));
        toggleAdmin.addActionListener(new ToggleButtonActionListener("Administrator@university.com"));
        toggleTranscript.addActionListener(new ToggleButtonActionListener("Transcriptauthority@university.com"));
        
    }

    private class ToggleButtonActionListener implements ActionListener {

        private final String enterpriseName;

        public ToggleButtonActionListener(String enterpriseName) {
            this.enterpriseName = enterpriseName;
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            // Corrected: Cast the source to javax.swing.JToggleButton
            boolean selected = ((javax.swing.JToggleButton) e.getSource()).isSelected();

            // Update the database with the new AccessCode value
            updateAccessCode(enterpriseName, selected ? 1 : 0);
        }
    }


    // Update the AccessCode in the database
    private void updateAccessCode(String enterpriseName, int accessCode) {
    String updateQuery = "UPDATE AccessController SET AccessCode = ? WHERE EnterpriseName = ?";

    try (java.sql.Connection connection = DatabaseConnection.getConnection();
         PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {

        preparedStatement.setInt(1, accessCode);
        preparedStatement.setString(2, enterpriseName);

        // Print the SQL query for debugging
        System.out.println("SQL Query: " + preparedStatement);

        int rowsUpdated = preparedStatement.executeUpdate();
        System.out.println("Rows updated: " + rowsUpdated);

        if (rowsUpdated > 0) {
            System.out.println("AccessCode updated successfully.");
        } else {
            System.out.println("No rows updated. Check the WHERE condition in your SQL statement.");
        }

    } catch (SQLException ex) {
        ex.printStackTrace();
    }
}

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblTitle = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        toggleHeadLibrabrian = new javax.swing.JToggleButton();
        toggleAccountant = new javax.swing.JToggleButton();
        toggleCafeManager = new javax.swing.JToggleButton();
        toggleCatalogue = new javax.swing.JToggleButton();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        toggleTranscript = new javax.swing.JToggleButton();
        toggleITmanger = new javax.swing.JToggleButton();
        toggleDatabaseAnalyst = new javax.swing.JToggleButton();
        toggleAdmin = new javax.swing.JToggleButton();
        jButton1 = new javax.swing.JButton();
        btnStuReport = new javax.swing.JButton();
        btnEmpReport = new javax.swing.JButton();
        btnLibAccess = new javax.swing.JButton();
        lblTitle1 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 255, 255));

        lblTitle.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lblTitle.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblTitle.setText("GIVE ACCESS HERE");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel2.setText("Grant Access to Cafeteria Accountant");

        toggleHeadLibrabrian.setText("GRANT ACCESS");

        toggleAccountant.setText("GRANT ACCESS");
        toggleAccountant.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                toggleAccountantActionPerformed(evt);
            }
        });

        toggleCafeManager.setText("GRANT ACCESS");

        toggleCatalogue.setText("GRANT ACCESS");

        jLabel5.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel5.setText("Grant Access to IT Manager");

        jLabel6.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel6.setText("Grant Access to Cafeteria Manager");

        jLabel7.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel7.setText("Grant Access to Head Librarian ");

        jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel8.setText("Grant Access to Catalougue Specialist");

        jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel9.setText("Grant Access to Administrator");

        jLabel10.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel10.setText("Grant Access to Database Analyst");

        jLabel11.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel11.setText("Grant Access to Transcript Authority");

        toggleTranscript.setText("GRANT ACCESS");

        toggleITmanger.setText("GRANT ACCESS");
        toggleITmanger.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                toggleITmangerActionPerformed(evt);
            }
        });

        toggleDatabaseAnalyst.setText("GRANT ACCESS");

        toggleAdmin.setText("GRANT ACCESS");

        jButton1.setFont(new java.awt.Font("Yu Gothic UI", 1, 14)); // NOI18N
        jButton1.setText("< Back");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        btnStuReport.setText("STUDENT REPORT");
        btnStuReport.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnStuReportActionPerformed(evt);
            }
        });

        btnEmpReport.setText("EMPLOYER REPORT");
        btnEmpReport.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEmpReportActionPerformed(evt);
            }
        });

        btnLibAccess.setText("LIBRARY REPORT");
        btnLibAccess.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLibAccessActionPerformed(evt);
            }
        });

        lblTitle1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        lblTitle1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblTitle1.setText("Reports");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(45, 45, 45)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 325, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(toggleDatabaseAnalyst, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleTranscript, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleAdmin, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleHeadLibrabrian, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleCatalogue, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleAccountant, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleCafeManager, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(toggleITmanger, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(jButton1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblTitle, javax.swing.GroupLayout.PREFERRED_SIZE, 692, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(131, 131, 131)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(lblTitle1, javax.swing.GroupLayout.PREFERRED_SIZE, 245, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(76, 76, 76))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(btnEmpReport, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(btnStuReport, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(btnLibAccess, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(140, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblTitle, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addGap(48, 48, 48)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(16, 16, 16)
                        .addComponent(jLabel8)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel5)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel10)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel9)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel11))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(toggleAccountant)
                        .addGap(14, 14, 14)
                        .addComponent(toggleCafeManager)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(toggleHeadLibrabrian)
                        .addGap(16, 16, 16)
                        .addComponent(toggleCatalogue)
                        .addGap(18, 18, 18)
                        .addComponent(toggleITmanger)
                        .addGap(18, 18, 18)
                        .addComponent(toggleDatabaseAnalyst)
                        .addGap(18, 18, 18)
                        .addComponent(toggleAdmin)
                        .addGap(18, 18, 18)
                        .addComponent(toggleTranscript)))
                .addGap(18, 18, 18)
                .addComponent(lblTitle1, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnEmpReport)
                    .addComponent(btnStuReport)
                    .addComponent(btnLibAccess))
                .addContainerGap(282, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void toggleAccountantActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_toggleAccountantActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_toggleAccountantActionPerformed

    private void toggleITmangerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_toggleITmangerActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_toggleITmangerActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        UniversitySelectionJFrame universityFrame = new UniversitySelectionJFrame();
    universityFrame.setLocationRelativeTo(null);
    // Set the new login frame visible and close the current frame
    universityFrame.setVisible(true);
    ((javax.swing.JFrame) SwingUtilities.getWindowAncestor(this)).dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void btnStuReportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnStuReportActionPerformed
        // TODO add your handling code here:
        JFrame frame = new JFrame("Student Report");

        // Set the layout (you can choose a different layout if needed)
        frame.setLayout(new BorderLayout());

        // Add your CafeteriaAccountJPanel to the frame
        StuGraphJPanel StuGJPanel = new StuGraphJPanel();
        frame.add(StuGJPanel, BorderLayout.CENTER);

        // Set frame properties
        frame.setSize(800, 600);  // Set the size as needed
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null);

        // Make the frame visible
        frame.setVisible(true);

        // Dispose the current frame
       
    }//GEN-LAST:event_btnStuReportActionPerformed

    private void btnEmpReportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEmpReportActionPerformed
        // TODO add your handling code here:
         // TODO add your handling code here:
        JFrame frame = new JFrame("Employer Report");

        // Set the layout (you can choose a different layout if needed)
        frame.setLayout(new BorderLayout());

        // Add your CafeteriaAccountJPanel to the frame
        EmployerGraphJPanel EmpGJPanel = new EmployerGraphJPanel();
        frame.add(EmpGJPanel, BorderLayout.CENTER);

        // Set frame properties
        frame.setSize(800, 600);  // Set the size as needed
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null);

        // Make the frame visible
        frame.setVisible(true);

        // Dispose the current frame
    }//GEN-LAST:event_btnEmpReportActionPerformed

    private void btnLibAccessActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLibAccessActionPerformed
        // TODO add your handling code here:
        JFrame frame = new JFrame("Library Report");

        // Set the layout (you can choose a different layout if needed)
        frame.setLayout(new BorderLayout());

        // Add your CafeteriaAccountJPanel to the frame
        LibGraphJPanel EmpGJPanel = new LibGraphJPanel();
        frame.add(EmpGJPanel, BorderLayout.CENTER);

        // Set frame properties
        frame.setSize(800, 600);  // Set the size as needed
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null);

        // Make the frame visible
        frame.setVisible(true);

    }//GEN-LAST:event_btnLibAccessActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnEmpReport;
    private javax.swing.JButton btnLibAccess;
    private javax.swing.JButton btnStuReport;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JLabel lblTitle1;
    private javax.swing.JToggleButton toggleAccountant;
    private javax.swing.JToggleButton toggleAdmin;
    private javax.swing.JToggleButton toggleCafeManager;
    private javax.swing.JToggleButton toggleCatalogue;
    private javax.swing.JToggleButton toggleDatabaseAnalyst;
    private javax.swing.JToggleButton toggleHeadLibrabrian;
    private javax.swing.JToggleButton toggleITmanger;
    private javax.swing.JToggleButton toggleTranscript;
    // End of variables declaration//GEN-END:variables

    void setLocationRelativeTo(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
