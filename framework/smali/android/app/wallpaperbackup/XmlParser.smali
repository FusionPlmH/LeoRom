.class public Landroid/app/wallpaperbackup/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentElement:Z

.field private mCurrentValue:Ljava/lang/String;

.field private mItem:Landroid/app/wallpaperbackup/WallpaperUser;

.field private mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "XmlParser"

    iput-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    nop

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_0

    :cond_0
    const-string v5, "XmlParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xml file is not exists. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    nop

    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_2
    :goto_4
    throw v2
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setWidth(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setHeight(I)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "component"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "tiltSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setLeftValue(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setTopValue(I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setRightValue(I)V

    goto :goto_0

    :cond_7
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setBottomValue(I)V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setRotationValue(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getObject()Landroid/app/wallpaperbackup/WallpaperUser;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    const-string v0, "User"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-direct {v1}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>()V

    iput-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Landroid/app/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/wallpaperbackup/XmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
