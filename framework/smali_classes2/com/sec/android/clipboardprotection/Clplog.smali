.class public Lcom/sec/android/clipboardprotection/Clplog;
.super Ljava/lang/Object;
.source "Clplog.java"


# static fields
.field public static final ATTACK:Ljava/lang/String; = "CLP1"

.field public static final ATTACK_NOINFO:Ljava/lang/String; = "attacknoinfo"

.field public static final ATTACK_TIMEOUT:Ljava/lang/String; = "attacktimeout"

.field static final CLP_LOG_TAG:Ljava/lang/String; = "CLP"

.field public static final CLP_USE_DSMS:Z = true

.field public static final FIVE:Ljava/lang/String; = "CLP2"

.field public static final FIVE_FAIL:Ljava/lang/String; = "fivefail"

.field public static final SS:Ljava/lang/String; = "CLP3"

.field public static final SS_READ_FAIL:Ljava/lang/String; = "ssreadfail"

.field public static final SS_WRITE_FAIL:Ljava/lang/String; = "sswritefail"

.field static sender:Lcom/samsung/android/jdsms/Sender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/clipboardprotection/Clplog;->sender:Lcom/samsung/android/jdsms/Sender;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logDSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sec/android/clipboardprotection/Clplog;->sender:Lcom/samsung/android/jdsms/Sender;

    if-eqz v0, :cond_0

    const-string v0, "CLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLP DSMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/sec/android/clipboardprotection/Clplog;->sender:Lcom/samsung/android/jdsms/Sender;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CLP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLP DSMS exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/Sender;

    invoke-direct {v0, p0}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clplog;->sender:Lcom/samsung/android/jdsms/Sender;

    return-void
.end method
