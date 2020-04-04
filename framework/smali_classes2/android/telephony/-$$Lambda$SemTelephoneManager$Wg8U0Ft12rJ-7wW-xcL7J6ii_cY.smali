.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$Wg8U0Ft12rJ-7wW-xcL7J6ii_cY;
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

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Wg8U0Ft12rJ-7wW-xcL7J6ii_cY;->f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$Wg8U0Ft12rJ-7wW-xcL7J6ii_cY;->f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0}, Landroid/telephony/SemTelephoneManager;->lambda$setInternalPdnEnabled$132(Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method
