.class public final synthetic Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$MfWYyhkbU_YI--l1dNS-tgJ15MQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$MfWYyhkbU_YI--l1dNS-tgJ15MQ;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$MfWYyhkbU_YI--l1dNS-tgJ15MQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$MfWYyhkbU_YI--l1dNS-tgJ15MQ;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$MfWYyhkbU_YI--l1dNS-tgJ15MQ;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->lambda$setMoreSettingEnabled$0(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
