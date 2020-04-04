.class Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;
.super Ljava/lang/Object;
.source "SuwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setNaviButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-virtual {v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->finish()V

    return-void
.end method
