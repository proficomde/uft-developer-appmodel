<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<applicationModel>
    <name>Application Model</name>
    <className>ApplicationModel</className>
    <objects>
        <object type="Page" technology="Web">
            <name>Die Bank für Privat- und Unternehmerkunden - Commerzbank</name>
            <codeName>Commerzbank_Start_Page</codeName>
            <description></description>
            <identification/>
            <children>
                <object type="WebElement" technology="Web">
                    <name>Login</name>
                    <codeName>Login_Link</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">DIV</property>
                            <property name="ClassName" type="string" isRegExp="false"/>
                            <property name="InnerText" type="string" isRegExp="false">Login</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
        <object type="Page" technology="Web">
            <name>Anmeldung zum Digital Banking - Commerzbank</name>
            <codeName>Commerzbank_Login_Page</codeName>
            <description></description>
            <identification/>
            <children>
                <object type="EditField" technology="Web">
                    <name>userid</name>
                    <codeName>Login_UserId_Edit</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">userid</property>
                            <property name="Type" type="string" isRegExp="false">text</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>pin</name>
                    <codeName>Login_UserPin_Edit</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">pin</property>
                            <property name="Type" type="string" isRegExp="false">password</property>
                        </properties>
                    </identification>
                </object>
                <object type="Link" technology="Web">
                    <name>Angebliche Bank-Mitarbeiter erfragen Zugangsdaten</name>
                    <codeName>Login_PishingLink_Edit</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                            <property name="InnerText" type="string" isRegExp="false">Angebliche Bank-Mitarbeiter erfragen Zugangsdaten</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
        <object type="Page" technology="Web">
            <name>Angebliche Bank-Mitarbeiter erfragen Zugangsdaten von Kunden - Commerzbank</name>
            <codeName>Commerzbank_Phishing_Warning_Page</codeName>
            <description></description>
            <identification/>
            <children>
                <object type="WebElement" technology="Web">
                    <name>Warnung vor Telefonbetrug</name>
                    <codeName>PhishingWarning_Header</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">H1</property>
                            <property name="InnerText" type="string" isRegExp="false">Warnung vor Telefonbetrug</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
    </objects>
</applicationModel>
