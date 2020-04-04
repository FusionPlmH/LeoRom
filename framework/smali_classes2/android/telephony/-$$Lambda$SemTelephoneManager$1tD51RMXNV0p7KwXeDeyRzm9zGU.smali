.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:I

.field private final synthetic f$4:Z

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:I

.field private final synthetic f$7:Landroid/telephony/SemTelephoneManager$OnTriResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;IZIZLjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$1:I

    iput-boolean p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$2:Z

    iput p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$3:I

    iput-boolean p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$4:Z

    iput-object p6, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$5:Ljava/lang/String;

    iput p7, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$6:I

    iput-object p8, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$7:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$1:I

    iget-boolean v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$2:Z

    iget v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$3:I

    iget-boolean v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$4:Z

    iget-object v5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$5:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$6:I

    iget-object v7, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$1tD51RMXNV0p7KwXeDeyRzm9zGU;->f$7:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    invoke-static/range {v0 .. v7}, Landroid/telephony/SemTelephoneManager;->lambda$setCallForwardingOption$56(Landroid/telephony/SemTelephoneManager;IZIZLjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    return-void
.end method
