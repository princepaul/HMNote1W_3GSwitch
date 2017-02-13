.class Lcom/android/phone/ExportContactsToSim$2;
.super Ljava/lang/Object;
.source "ExportContactsToSim.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ExportContactsToSim;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ExportContactsToSim;


# direct methods
.method constructor <init>(Lcom/android/phone/ExportContactsToSim;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/ExportContactsToSim$2;->this$0:Lcom/android/phone/ExportContactsToSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim$2;->this$0:Lcom/android/phone/ExportContactsToSim;

    invoke-virtual {v0}, Lcom/android/phone/ExportContactsToSim;->finish()V

    .line 192
    return-void
.end method
