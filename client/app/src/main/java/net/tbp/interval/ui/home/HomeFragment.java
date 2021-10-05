    package net.tbp.interval.ui.home;

    import android.app.Activity;
    import android.os.Bundle;
    import android.util.Log;
    import android.view.LayoutInflater;
    import android.view.View;
    import android.view.ViewGroup;
    import android.widget.Button;
    import android.widget.TextView;

    import androidx.annotation.NonNull;
    import androidx.annotation.Nullable;
    import androidx.fragment.app.Fragment;
    import androidx.lifecycle.Observer;
    import androidx.lifecycle.ViewModelProvider;

    import com.android.volley.Request;
    import com.android.volley.RequestQueue;
    import com.android.volley.Response;
    import com.android.volley.VolleyError;
    import com.android.volley.toolbox.StringRequest;
    import com.android.volley.toolbox.Volley;
    import com.example.interval.R;
    import com.example.interval.databinding.FragmentHomeBinding;

    public class HomeFragment extends Fragment {

        private HomeViewModel homeViewModel;
        private FragmentHomeBinding binding;

        public View onCreateView(@NonNull LayoutInflater inflater,
                                 ViewGroup container, Bundle savedInstanceState) {
            homeViewModel =
                    new ViewModelProvider(this).get(HomeViewModel.class);

            binding = FragmentHomeBinding.inflate(inflater, container, false);
            View root = binding.getRoot();

            final TextView textView = binding.textHome;
            homeViewModel.getText().observe(getViewLifecycleOwner(), new Observer<String>() {
                @Override
                public void onChanged(@Nullable String s) {
                    textView.setText(s);
                }
            });

            Activity view = new Activity();
            Button button = (Button) root.findViewById(R.id.getString);
            button.setOnClickListener(new View.OnClickListener()
            {
                @Override
                public void onClick(View v) {
                    // do something
                    Log.d("myTag", "Fetching Task Data");
                    final TextView stringTextView = (TextView) root.findViewById(R.id.addStringFromURL);
                    // Instantiate the RequestQueue.
                    RequestQueue queue = Volley.newRequestQueue(getActivity());
                    //String url ="http://192.168.0.42:8080/test/all";
                    String url ="https://www.google.com";

                    // Request a string response from the provided URL.
                    StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                            new Response.Listener<String>() {
                                @Override
                                public void onResponse(String response) {
                                    // Display the first 500 characters of the response string.
                                    stringTextView.setText(response);
                                }
                            }, new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            stringTextView.setText("That didn't work!");
                        }
                    });

                    // Add the request to the RequestQueue.
                    queue.add(stringRequest);
                }
            });
            return root;
        }

        @Override
        public void onDestroyView() {
            super.onDestroyView();
            binding = null;
        }


    }