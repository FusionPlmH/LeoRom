.class public final synthetic Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$XMzYXAodg-Nf0HyhuxmBy61az9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

.field private final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$XMzYXAodg-Nf0HyhuxmBy61az9I;->f$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$XMzYXAodg-Nf0HyhuxmBy61az9I;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$XMzYXAodg-Nf0HyhuxmBy61az9I;->f$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ApplicationViewHolder$XMzYXAodg-Nf0HyhuxmBy61az9I;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->lambda$getSwitchOnClickListener$1(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method
