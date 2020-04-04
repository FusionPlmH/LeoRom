.class Landroid/content/pm/aasa/AASATokenParser$2;
.super Ljava/lang/Object;
.source "AASATokenParser.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/aasa/AASATokenParser;->initADP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/aasa/AASATokenParser;


# direct methods
.method constructor <init>(Landroid/content/pm/aasa/AASATokenParser;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser$2;->this$0:Landroid/content/pm/aasa/AASATokenParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
