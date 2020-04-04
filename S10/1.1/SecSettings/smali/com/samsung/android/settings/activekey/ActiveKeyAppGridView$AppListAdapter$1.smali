.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->access$300(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V

    return-void
.end method
