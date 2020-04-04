.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$JXJQBL-ddAklUXDQpwf7GWSCb6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$JXJQBL-ddAklUXDQpwf7GWSCb6M;->f$0:Lcom/android/settings/dashboard/DashboardSummary;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$JXJQBL-ddAklUXDQpwf7GWSCb6M;->f$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->lambda$onCreateOptionsMenu$0(Lcom/android/settings/dashboard/DashboardSummary;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
