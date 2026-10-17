#component
@android:type/com.google.appinventor.components.runtime.Form {
  $Version = 30;
  $Name = "Screen1";
  AppName = "Flock Finder";
  Title = "Flock Finder Map canvas View";
  Scrollable = "False";

  @android:type/com.google.appinventor.components.runtime.VerticalArrangement {
    $Name = "VerticalArrangement_MainMap";
    Width = -2;
    Height = -2;
    Visible = "True";

    @android:type/com.google.appinventor.components.runtime.Label {
      $Name = "HeaderBanner";
      Text = "Flock Finder: Surveillance Awareness Utility";
      FontSize = 18;
      FontBold = "True";
      Width = -2;
    }

    @android:type/com.google.appinventor.components.runtime.Map {
      $Name = "MapCanvas";
      Width = -2;
      Height = -3;
      ShowUserLocation = "True";

      @android:type/com.google.appinventor.components.runtime.Marker {
        $Name = "Marker_ActiveCamera";
        Latitude = 0.0;
        Longitude = 0.0;
        ImageAsset = "img_surveillance_cam.png";
        Visible = "False";
      }
    }

    @android:type/com.google.appinventor.components.runtime.Canvas {
      $Name = "Canvas1";
      Width = -2;
      Height = 50;
      Visible = "False";
    }

    @android:type/com.google.appinventor.components.runtime.Button {
      $Name = "Button_ReportCamera";
      Text = "[ + Report New Camera Location ]";
      Width = -2;
      Height = 50;
    }
  }

  @android:type/com.google.appinventor.components.runtime.HorizontalArrangement {
    $Name = "HorizontalArrangement_FormControls";
    Width = -2;
    Height = -2;
    Visible = "False";

    @android:type/com.google.appinventor.components.runtime.Label {
      $Name = "Label_CoordinatesDisplay";
      Text = "Target GPS Coordinates Stored Instantly";
      Width = -2;
    }

    @android:type/com.google.appinventor.components.runtime.Button {
      $Name = "Button_SubmitPin";
      Text = "Submit Anonymously to Database";
    }
  }

  @android:type/com.google.appinventor.components.runtime.LocationSensor {
    $Name = "LocationSensor1";
    TimeInterval = 5000;
    DistanceInterval = 5;
    Enabled = "True";
  }

  @android:type/com.google.appinventor.components.runtime.ProximitySensor {
    $Name = "ProximitySensor1";
    Enabled = "True";
  }

  @android:type/com.google.appinventor.components.runtime.Sound {
    $Name = "Sound1";
    Source = "alert.wav";
  }
}
