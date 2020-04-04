.class public final synthetic Lcom/android/server/-$$Lambda$BootReceiver$_0G0e_E_iit5YpvVIsGoYxxcl-0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$BootReceiver$_0G0e_E_iit5YpvVIsGoYxxcl-0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$BootReceiver$_0G0e_E_iit5YpvVIsGoYxxcl-0;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$BootReceiver$_0G0e_E_iit5YpvVIsGoYxxcl-0;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$BootReceiver$_0G0e_E_iit5YpvVIsGoYxxcl-0;->INSTANCE:Lcom/android/server/-$$Lambda$BootReceiver$_0G0e_E_iit5YpvVIsGoYxxcl-0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/BootReceiver;->lambda$getDumpFilename$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
