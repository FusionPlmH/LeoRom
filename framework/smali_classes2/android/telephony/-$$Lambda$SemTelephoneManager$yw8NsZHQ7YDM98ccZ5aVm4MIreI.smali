.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$yw8NsZHQ7YDM98ccZ5aVm4MIreI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$yw8NsZHQ7YDM98ccZ5aVm4MIreI;->f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$yw8NsZHQ7YDM98ccZ5aVm4MIreI;->f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->lambda$setRadioPowerEnabled$88(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method
