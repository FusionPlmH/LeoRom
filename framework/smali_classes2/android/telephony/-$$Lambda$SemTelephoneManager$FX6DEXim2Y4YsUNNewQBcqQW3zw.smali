.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/telephony/SemTelephoneManager$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$3:Landroid/telephony/SemTelephoneManager$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$0:Landroid/telephony/SemTelephoneManager;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FX6DEXim2Y4YsUNNewQBcqQW3zw;->f$3:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SemTelephoneManager;->lambda$getMvnoName$131(Landroid/telephony/SemTelephoneManager;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    return-void
.end method
